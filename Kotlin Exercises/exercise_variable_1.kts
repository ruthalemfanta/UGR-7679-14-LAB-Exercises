fun operation() {
    println("Enter the first number:")
    val number1 = readLine()?.toDoubleOrNull()

    println("Enter the second number:")
    val number2 = readLine()?.toDoubleOrNull()

    println("Enter the operation (+, -, *, /):")
    val operation = readLine()

    if (number1 == null || number2 == null || operation == null) {
        println("Invalid input")
        return
    }

    val result = when (operation) {
        "+" -> number1 + number2
        "-" -> number1 - number2
        "*" -> number1 * number2
        "/" -> number1 / number2
        else -> throw IllegalArgumentException("Invalid operation")
    }

    println("Result: $result")
}

operation()