class Binary : CustomStringConvertible {
    let decimalString: String
    var description: String {
        var decimal = 0;
        for i in 0 ..< decimalString.characters.count {
            let char = decimalString[i];
            if(char == "1") {
                let power = decimalString.characters.count - i - 1;
                decimal += powerOf2(power)
            }
        }
        return String(decimal);
    }
    
    init?(_ decimalString:String) {
        self.decimalString = decimalString
        for char in decimalString.characters {
            if(char != "0" && char != "1") {
                return nil
            }
        }
    }
    
    private func powerOf2(power:Int) -> Int {
        var returnVal = 1;
        for _ in 0 ..< power {
            returnVal *= 2
        }
        return returnVal
    }
}

extension Int {
    init(_ binary: Binary?){
        self.init(binary!.description)!
    }
}