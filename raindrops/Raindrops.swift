class Raindrops {
    let mappings = [(3, "Pling"), (5, "Plang"), (7, "Plong")]
    let numberOfDrops: Int
    
    var sounds: String {
        var sound = ""
        let primeFactors = PrimeFactors(numberOfDrops).toArray;
        for (number, drop) in mappings {
            if(primeFactors.contains(number)) {
                sound += drop
            }
        }
        
        if(sound.isEmpty) {
            sound = String(numberOfDrops)
        }
        return sound
    }
    
    init (_ numberOfDrops:Int) {
        self.numberOfDrops = numberOfDrops
    }
}