import Foundation

class PhoneNumber {
    var number = ""
    let areaCode: String
    private let invalidNumber = "0000000000"
    
    init(_ startingNumber: String) {
        var tmpNumer = startingNumber
        if(startingNumber.characters.count == 11 && startingNumber[0] == "1") {
            tmpNumer = startingNumber.substringFromIndex(startingNumber.startIndex.advancedBy(1))
        }
        
        let digits = NSCharacterSet.decimalDigitCharacterSet()
        for char in tmpNumer.unicodeScalars {
            if(digits.longCharacterIsMember(char.value)) {
                self.number += String(char)
            }
        }
        if(self.number.characters.count != 10) {
            self.number = invalidNumber
        }
        
        self.areaCode = self.number.substringToIndex(self.number.startIndex.advancedBy(3))
    }
    

}

extension String {
     init (_ phoneNumber: PhoneNumber) {
        let numberWithoutAreaCode = phoneNumber.number.substringFromIndex(phoneNumber.number.startIndex.advancedBy(3))
        let first3 = numberWithoutAreaCode.substringToIndex(numberWithoutAreaCode.startIndex.advancedBy(3))
        let last4 = numberWithoutAreaCode.substringFromIndex(numberWithoutAreaCode.startIndex.advancedBy(3))
        let formattedString = "(\(phoneNumber.areaCode)) \(first3)-\(last4)"
        
        self.init(formattedString)
    }
}

