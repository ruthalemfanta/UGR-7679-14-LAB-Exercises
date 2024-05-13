    val originalPrice = 100.0
    val discountPercentage = 0.6
    val threshold = 0.5 

    var finalPrice: Double

    if (discountPercentage > threshold) {
        println("The discount percentage is too high.")
        println("Setting the discount to the threshold value of ${threshold * 100}%")
        finalPrice = originalPrice * (1 - threshold)
    } else {
        finalPrice = originalPrice * (1 - discountPercentage)
    }

    println("Original Price: $originalPrice")
    println("Discount Percentage: ${discountPercentage * 100}%")
    println("Final Price: $finalPrice")
