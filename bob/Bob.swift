import Foundation

class Bob {
    
    static func hey(input:String) -> String {
        if(input.trim() == "") {
            return BobSays.silence.rawValue
        }
        if(input == input.uppercaseString) {
            let letters = NSCharacterSet.letterCharacterSet()
            for char in input.unicodeScalars {
                if(letters.longCharacterIsMember(char.value)) {
                    return BobSays.shouting.rawValue
                }
            }
        }
        if(input[input.characters.count - 1] == "?") {
            return BobSays.question.rawValue
        }
        
        return BobSays.other.rawValue
    }
    
    enum BobSays: String {
        case silence = "Fine, be that way."
        case shouting = "Woah, chill out!"
        case question = "Sure."
        case other = "Whatever."
    }
}

extension String
{
    func trim() -> String
    {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
}