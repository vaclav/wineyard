import java.math.BigDecimal
import java.util.{ArrayList}

object DistanceCalculator {
    def sortedWines(lat: BigDecimal, lon: BigDecimal, wines: ArrayList[WineCandidate]) = {
        var wineCandidates: scala.List[WineCandidate] = Nil
        for (i <- (0 to (wines.size() - 1))) {
            val c: WineCandidate = wines.get(i)
            wineCandidates = c :: wineCandidates
        }
        wineCandidates.sort(_.calculateDistanceCoeficient(lat, lon) < _.calculateDistanceCoeficient(lat, lon))
    }
}

class WineCandidate(val name: String, val lat: BigDecimal, val lon: BigDecimal) {
    var distanceCoeficient: double = -1

    def calculateDistanceCoeficient(lat: BigDecimal, lon: BigDecimal) = {
        if (distanceCoeficient == -1) {
            val diff = calculateDiff(lat, lon)
            distanceCoeficient = Math.sqrt(Math.pow(diff._1, 2) + Math.pow(diff._2, 2))
        }
        distanceCoeficient
    }

    private[WineCandidate] def calculateDiff(lat: BigDecimal, lon: BigDecimal) = {
        (this.lat.subtract(lat).doubleValue, this.lon.subtract(lon).doubleValue)
    }
}