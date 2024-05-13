    println("Enter the first number:")
    val number1 = readLine()?.toDoubleOrNull()

    println("Enter the second number:")
    val number2 = readLine()?.toDoubleOrNull()

    println("Enter the operation (+, -, *, /):")
    val operation = readLine()

    val result = when (operation) {
        "+" -> number1?.plus(number2 ?: 0.0)
        "-" -> number1?.minus(number2 ?: 0.0)
        "*" -> number1?.times(number2 ?: 0.0)
        "/" -> number1?.div(number2 ?: 1.0)
        else -> null
    }

    println("Result: $result")
