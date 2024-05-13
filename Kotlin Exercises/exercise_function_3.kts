fun transformToUppercase(strings: List<String>): List<String> {
    return strings.map { it.uppercase() }
}

fun filterNumbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { sum, element -> sum + element }
}

    val strings = listOf("apple", "banana", "cherry")
    val transformedStrings = transformToUppercase(strings)
    println("Transformed strings: $transformedStrings")

    val numbers = listOf(5, 10, 15, 20, 25)
    val threshold = 15
    val filteredNumbers = filterNumbersGreaterThan(numbers, threshold)
    println("Filtered numbers: $filteredNumbers")

    val numbers2 = listOf(2, 4, 6, 8, 10)
    val sum = calculateSum(numbers2)
    println("Sum of numbers: $sum")