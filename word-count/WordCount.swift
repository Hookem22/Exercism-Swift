import Foundation

class WordCount {
    let Words: String
    
    init(words: String) {
        self.Words = words
    }
    
    func count() -> Dictionary<String, Int> {
        let letters = NSCharacterSet.letterCharacterSet()
        let digits = NSCharacterSet.decimalDigitCharacterSet()
        
        var dict = [String: Int]()
        var word = ""
        for char in self.Words.unicodeScalars {
            if(char == " " || (!letters.longCharacterIsMember(char.value) && !digits.longCharacterIsMember(char.value))) {
                addWord(&dict, word: word)
                word = ""
            }
            else {
                word += String(char).lowercaseString
            }
        }
        addWord(&dict, word: word)
        return dict
    }
    
    func addWord(inout dict: Dictionary<String, Int>, word: String) {
        if (word.characters.count == 0) {
            return
        }
        if let count = dict[word] {
            dict[word] = count + 1
        }
        else {
            dict[word] = 1
        }
    }
}

