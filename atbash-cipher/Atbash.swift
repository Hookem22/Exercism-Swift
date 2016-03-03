class Atbash {
    
    static func encode(toEncode: String) -> String {
        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        let cipher = "zyxwvutsrqponmlkjihgfedcba"
        
        let phrase = cleanString(toEncode)
        var encode = "";
        for char in phrase.characters {
            if(encode.characters.count > 0 && encode.stringByReplacingOccurrencesOfString(" ", withString: "").characters.count % 5 == 0) {
                encode += " "
            }
            
            if(alphabet.characters.contains(char)) {
                let index = alphabet.characters.indexOf(char)!
                encode += String(cipher[index])
            }
            else {
                encode += String(char)
            }
        }
        return encode
    }
    
    private static func cleanString(string:String) -> String {
        return string.lowercaseString.stringByReplacingOccurrencesOfString(" ", withString: "").stringByReplacingOccurrencesOfString(".", withString: "").stringByReplacingOccurrencesOfString(",", withString: "")
    }
}