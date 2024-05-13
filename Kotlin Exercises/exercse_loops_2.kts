    val passwordLength = 8 // Length of the password
    val characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+-=" // Characters to include in the password

    val password = generateRandomPassword(passwordLength, characters)
    println("Generated Password: $password")


fun generateRandomPassword(length: Int, characters: String): String {
    val password = StringBuilder()

    for (i in 0 until length) {
        val randomIndex = (0 until characters.length).random()
        val randomChar = characters[randomIndex]
        password.append(randomChar)
    }

    return password.toString()
}