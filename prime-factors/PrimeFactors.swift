class PrimeFactors {
    let number: Int
    var toArray: Array<Int> {
        var primeFactors = [Int]()
        var total = self.number
        if(total > 1) {
            for (var i = 2; i <= total; i++) {
                if(total % i == 0) {
                    primeFactors.append(i)
                    total /= i
                    i--
                }
            }
        }
        return primeFactors
    }
    
    init(_ number: Int) {
        self.number = number
    }
    
}
