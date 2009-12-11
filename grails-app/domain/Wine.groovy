class Wine {
    String name, description
    String lat, lon

    static constraints = {
        name(nullable: false, blank: false, unique: true)
        description(nullable: true, blank: true)
        lat(nullable: false, blank: false)
        lon(nullable: false, blank: false)
    }
}
