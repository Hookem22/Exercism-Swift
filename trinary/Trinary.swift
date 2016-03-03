class Trinary : CustomStringConvertible {
    let decimalString: String
    var description: String {
        var decimal = 0;
        for i in 0 ..< decimalString.characters.count {
            let char = decimalString[i];
            if(char == "0" || char == "1" || char == "2") {
                let power = decimalString.characters.count - i - 1;
                decimal += powerOf3(power) * Int(String(char))!
            } else {
                return "0"
            }
        }
        return String(decimal);
    }
    
    init(_ decimalString:String) {
        self.decimalString = decimalString
    }
    
    private func powerOf3(power:Int) -> Int {
        var returnVal = 1;
        for _ in 0 ..< power {
            returnVal *= 3
        }
        return returnVal
    }
}

extension Int {
    init(_ trinary: Trinary?){
        self.init(trinary!.description)!
    }
}