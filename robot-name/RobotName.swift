import Foundation

class Robot {
    var name = ""
    
    init() {
        name = randomString(2, isNumber: false) + randomString(3, isNumber: true)
    }
    
    func resetName() {
        name = randomString(2, isNumber: false) + randomString(3, isNumber: true)
    }
    
    func randomString(length: Int, isNumber: Bool) -> String {
        
        let allowedChars = isNumber ? "0123456789" : "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let allowedCharsCount = UInt32(allowedChars.characters.count)
        var randomString = ""
        
        for _ in (0..<length) {
            let randomNum = Int(arc4random_uniform(allowedCharsCount))
            let newCharacter = allowedChars[allowedChars.startIndex.advancedBy(randomNum)]
            randomString += String(newCharacter)
        }
        
        return randomString
    }
    
}

