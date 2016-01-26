class Hamming {
    
    static func compute(strand: String, against: String) -> Int? {
        if (strand.characters.count != against.characters.count) {
            return nil
        }
        var count = 0
        for i in 0 ..< strand.characters.count {
            if(strand[i] != against[i]) {
                count++
            }
        }
        return count
    }
    
}

extension String {
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (r: Range<Int>) -> String {
        let start = startIndex.advancedBy(r.startIndex)
        let end = start.advancedBy(r.endIndex - r.startIndex)
        return self[Range(start: start, end: end)]
    }
}


