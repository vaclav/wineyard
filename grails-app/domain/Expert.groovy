class Expert {
    String name

    static hasMany = [recommendations: Recommendation]

    def String toString() { name }


    static constraints = {
    }
}
