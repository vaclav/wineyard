class BootStrap {

    def init = {servletContext ->
        new Wine(name: 'Barolo', lat: '44.610428', lon: '7.942577').save()
        new Wine(name: 'Boca', lat: '45.679628', lon: '8.409306').save()
        new Wine(name: 'Albugnano', lat: '45.077979', lon: '7.971250').save()
        new Wine(name: 'Alto Adige - Pinot Nero', lat: '46.495165', lon: '11.354103').save()
        new Wine(name: 'Barbaresco', lat: '44.72504', lon: '8.08086').save()
        new Wine(name: 'Brachetto dAcqui', lat: '44.675528', lon: '8.47066').save()
        new Wine(name: 'Chianti', lat: '43.585099', lon: '11.315357').save()
        new Wine(name: 'Dolcetto dAcqui', lat: '44.675528', lon: '8.470669').save()
        new Wine(name: 'Gavi (Cortese di Gavi)', lat: '44.688661', lon: '8.802880').save()
        //44.404651 8.918862
    }
    def destroy = {
    }
} 