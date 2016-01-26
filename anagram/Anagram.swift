class Anagram {
    let Word: String
    
    init(word: String) {
        self.Word = word.lowercaseString
    }
    
    func match(wordList: Array<String>) -> Array<String> {
        var anagrams = [String]()
        for ckWord in wordList {
            var tempWord = ckWord.lowercaseString
            if(ckWord.characters.count != self.Word.characters.count || tempWord == self.Word) {
                continue
            }

            for char in self.Word.unicodeScalars {
                if(tempWord.containsString(String(char))) {
                    let range: Range<String.Index> = tempWord.rangeOfString(String(char))!
                    tempWord.removeRange(range)
                }
                else {
                    break
                }
                if(tempWord.characters.count == 0) {
                    anagrams.append(ckWord)
                }
            }
        }
        
        return anagrams
    }
}