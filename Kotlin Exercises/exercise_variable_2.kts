val distance = 10.0
val unit = "kilometers"
val toUnit = "meters"

val convertedDistance = when (unit.toLowerCase().trim()) {
    "kilometers" -> distance * 1000
    else -> throw IllegalArgumentException("Unsupported conversion")
}

println("$distance $unit is equal to $convertedDistance $toUnit")
