fun main() {
    val distance = 10.0
    val unit = "kilometers"

    val convertedDistance = convertDistance(distance, unit, "meters")

    println("$distance $unit is equal to $convertedDistance meters")
}

fun convertDistance(distance: Double, fromUnit: String, toUnit: String): Double {
    if (fromUnit.equals("kilometers", ignoreCase = true) &&
        toUnit.equals("meters", ignoreCase = true)) {
        return distance * 1000
    }
    throw IllegalArgumentException("Unsupported conversion")
}