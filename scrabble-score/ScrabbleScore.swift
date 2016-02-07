class Scrabble {
    let score: Int
    
    init(_ word:String?) {
        self.score = Scrabble.score(word)
    }
    
    static func score(word:String?) -> Int {        
        var total = 0
        if let stringWord:String = word {
            for char in stringWord.characters {
                total += letterVal(char)
            }
        }

        return total
    }
    
    private static func letterVal(letter:Character) -> Int {
        let char = String(letter).uppercaseString
        switch char {
            case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T":
                return 1
            case "D", "G":
                return 2
            case "B", "C", "M", "P":
                return 3
            case "F", "H", "V", "W", "Y":
                return 4
            case "K":
                return 5
            case "J", "X":
                return 8
            case "Q", "Z":
                return 10
            default:
                return 0
            
        }
    }
}