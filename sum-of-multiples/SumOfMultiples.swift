class SumOfMultiples {
    
    static func toLimit(max: Int, inMultiples: [Int] = [3, 5]) -> Int {
        var multiples = Set<Int>()
        for multiple in inMultiples {
            if multiple <= 0 {
                continue
            }
            var i = 1
            while i * multiple < max  {
                multiples.insert(i * multiple)
                i++
            }
        }
        return setSum(multiples)
    }
    
    static func setSum(set: Set<Int>) -> Int {
        var sum = 0
        for val in set {
            sum += val
        }
        return sum
    }
}