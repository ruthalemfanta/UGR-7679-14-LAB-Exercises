fun findMax(numbers: List<Int>): Int {
    return numbers.maxOrNull() ?: throw NoSuchElementException("List is empty")
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double {
    return numbers.average()
}

    val numbers = listOf(5, 10, 8, 3, 12, 6)
    val maxNumber = findMax(numbers)
    println("Max number in the list: $maxNumber")

    val numbers2 = listOf(3, 6, 8, 9, 2, 4, 7)
    val evenNumbers = filterEvenNumbers(numbers2)
    println("Even numbers in the list: $evenNumbers")

    val numbers3 = listOf(2.5, 4.7, 6.3, 8.1, 9.2)
    val average = calculateAverage(numbers3)
    println("Average of the numbers: $average")