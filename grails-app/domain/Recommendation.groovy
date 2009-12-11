class Recommendation {
    String remark
    Date whenRecommended
    Expert recommendedBy

    def String toString() { remark }


    static belongsTo = [wine: Wine]

    static constraints = {
    }
}
