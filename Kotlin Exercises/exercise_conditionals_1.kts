    println("Enter the numeric grade:")
    val grade = readLine()?.toIntOrNull()

    if (grade != null) {
        val letterGrade = when {
            grade >= 90 -> "A"
            grade >= 80 -> "B"
            grade >= 70 -> "C"
            grade >= 60 -> "D"
            else -> "F"
        }

        println("Letter Grade: $letterGrade")
    } else {
        println("Invalid input")
    }