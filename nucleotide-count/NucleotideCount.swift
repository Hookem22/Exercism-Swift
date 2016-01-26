class DNA {
    let Strand: String
    
    init?(strand: String) {
        self.Strand = strand	
        
        let validDNA = ["T", "A", "C", "G"]
        for char in strand.unicodeScalars {
            if(!validDNA.contains(String(char))) {
                return nil
            }
        }
    }
    
    func count(letter: String) -> Int {
        var count = 0
        for char in self.Strand.unicodeScalars {
            if(letter == String(char)) {
                count++
            }
        }
        return count
    }
    
    func counts() -> Dictionary<String, Int> {
        var dict =  ["T": 0, "A": 0, "C": 0, "G": 0]
        for key in dict.keys {
            dict[key] = count(key)
        }
        return dict
    }
}