class BankAccount(
    val accountNumber: String,
    var balance: Double
) {
    fun deposit(amount: Double) {
        require(amount > 0) { "Amount to deposit must be positive" }
        balance += amount
        println("Deposited $amount. New balance: $balance")
    }

    fun withdraw(amount: Double) {
        require(amount > 0) { "Amount to withdraw must be positive" }
        if (balance >= amount) {
            balance -= amount
            println("Withdrawn $amount. New balance: $balance")
        } else {
            println("Insufficient funds. Current balance: $balance")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}

val account = BankAccount("10005737057", 1000.0)
account.printBalance() 

account.deposit(500.0) 
account.withdraw(200.0) 

account.withdraw(2000.0) 
