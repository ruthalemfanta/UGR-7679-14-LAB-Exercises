fun analyzeString(input: String): Triple<Int, Int, Int> {
    val words = input.split(Regex("\\s+")).size
    val uppercaseLetters = input.count { it.isUpperCase() }
    val vowels = input.count { it.toLowerCase() in "aeiou" }

    return Triple(words, uppercaseLetters, vowels)
}

    println("Enter a string:")
    val input = readLine()

    if (input != null) {
        val (wordCount, uppercaseCount, vowelCount) = analyzeString(input)

        println("Number of words: $wordCount")
        println("Number of uppercase letters: $uppercaseCount")
        println("Number of vowels: $vowelCount")
    } else {
        println("Invalid input")
    }
