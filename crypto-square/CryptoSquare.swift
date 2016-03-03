
class Crypto {
    let text: String

    var normalizePlaintext = ""
    var size = 0
    var plaintextSegments = [String]()
    var ciphertext = ""
    var normalizeCiphertext = ""
    
    init(_ text: String) {
        self.text = text
        setNormalizePlainText()
        setSize()
        setPlaintextSegments()
        setCiphertext()
        setNormalizeCiphertext()
    }
    
    func setNormalizePlainText() {
        let alphabet = "abcdefghijklmnopqrstuvwxyz0123456789"
        var normalize = ""
        for char in text.lowercaseString.characters {
            if(alphabet.containsString(String(char))) {
                normalize += String(char)
            }
        }
        self.normalizePlaintext = normalize
    }
    
    func setSize() {
        var i = 0
        let ct = normalizePlaintext.characters.count
        while (i * i < ct) {
            i++
        }
        self.size = i
    }
    
    func setPlaintextSegments() {
        var segments = [String]()
        for i in 0 ..< size {
            var segment = ""
            for j in 0 ..< size {
                let idx = i * size + j
                if(idx < normalizePlaintext.characters.count) {
                    segment += String(normalizePlaintext[idx])
                }
            }
            if(segment.characters.count > 0) {
                segments.append(segment)
            }
        }
        self.plaintextSegments = segments
    }
    
    func setCiphertext() {
        var cipher = ""
        for i in 0 ..< size {
            for j in 0 ..< plaintextSegments.count {
                if(j * size + i < normalizePlaintext.characters.count) {
                    cipher += String(plaintextSegments[j][i])
                }
            }
        }
        self.ciphertext = cipher
    }
    
    func setNormalizeCiphertext() {
        var cipher = ""
        print(size)
        for i in 0 ..< ciphertext.characters.count {
            cipher += String(ciphertext[i])
            if((i + 1) % (size - 1) == 0) {
                cipher += " "
            }
        }
        print(cipher)
        self.normalizeCiphertext = cipher.trim()
    }
    
}
