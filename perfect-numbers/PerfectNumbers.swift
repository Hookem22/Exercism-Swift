class NumberClassifier {
    let Number: Int
    var classification: PerfectNumberType {
        get {
            var factorSum = 0
            for i in 1..<self.Number {
                if(self.Number % i == 0) {
                    factorSum += i
                }
            }
            if(factorSum < self.Number) {
                return .Deficient
            } else if(factorSum > self.Number) {
                return .Abundant
            } else {
                return .Perfect
            }
        }
    }
    
    init(number: Int) {
        self.Number = number
    }
    
    enum PerfectNumberType {
        case Perfect, Deficient, Abundant
    }

}


