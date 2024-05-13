    println("Enter a string:")
    val input = readLine()

    if (input != null && input.isNotEmpty()) {
        var minChar = input[0]
        var maxChar = input[0]

        for (i in 1 until input.length) {
            val currentChar = input[i]

            if (currentChar < minChar) {
                minChar = currentChar
            }

            if (currentChar > maxChar) {
                maxChar = currentChar
            }
        }

        println("Minimum character: $minChar")
        println("Maximum character: $maxChar")
    } else {
        println("Invalid input")
    }
