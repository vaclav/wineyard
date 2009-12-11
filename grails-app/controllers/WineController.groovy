class WineController {

    def index = { redirect(action: list, params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete: 'POST', save: 'POST', update: 'POST']

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10, 100)
        [wineInstanceList: Wine.list(params), wineInstanceTotal: Wine.count()]
    }

    def show = {
        def wineInstance = Wine.get(params.id)

        if (!wineInstance) {
            flash.message = "Wine not found with id ${params.id}"
            redirect(action: list)
        }
        else { return [wineInstance: wineInstance] }
    }

    def delete = {
        def wineInstance = Wine.get(params.id)
        if (wineInstance) {
            try {
                wineInstance.delete(flush: true)
                flash.message = "Wine ${params.id} deleted"
                redirect(action: list)
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "Wine ${params.id} could not be deleted"
                redirect(action: show, id: params.id)
            }
        }
        else {
            flash.message = "Wine not found with id ${params.id}"
            redirect(action: list)
        }
    }

    def edit = {
        def wineInstance = Wine.get(params.id)

        if (!wineInstance) {
            flash.message = "Wine not found with id ${params.id}"
            redirect(action: list)
        }
        else {
            return [wineInstance: wineInstance]
        }
    }

    def update = {
        def wineInstance = Wine.get(params.id)
        if (wineInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (wineInstance.version > version) {

                    wineInstance.errors.rejectValue("version", "wine.optimistic.locking.failure", "Another user has updated this Wine while you were editing.")
                    render(view: 'edit', model: [wineInstance: wineInstance])
                    return
                }
            }
            wineInstance.properties = params
            if (!wineInstance.hasErrors() && wineInstance.save()) {
                flash.message = "Wine ${params.id} updated"
                redirect(action: show, id: wineInstance.id)
            }
            else {
                render(view: 'edit', model: [wineInstance: wineInstance])
            }
        }
        else {
            flash.message = "Wine not found with id ${params.id}"
            redirect(action: list)
        }
    }

    def create = {
        def wineInstance = new Wine()
        wineInstance.properties = params
        return ['wineInstance': wineInstance]
    }

    def save = {
        def wineInstance = new Wine(params)
        if (!wineInstance.hasErrors() && wineInstance.save()) {
            flash.message = "Wine ${wineInstance.id} created"
            redirect(action: show, id: wineInstance.id)
        }
        else {
            render(view: 'create', model: [wineInstance: wineInstance])
        }
    }
}
