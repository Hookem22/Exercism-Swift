class RomanNumeral: CustomStringConvertible {
    let number: Int
    let romans = [
        (1000, "M"),
        (900, "CM"),
        (500, "D"),
        (400, "CD"),
        (100, "C"),
        (90, "XC"),
        (50, "L"),
        (40, "XL"),
        (10, "X"),
        (9, "IX"),
        (5, "V"),
        (4, "IV"),
        (1, "I")
    ]

    var description: String {
        var romanNumeral = ""
        var val = number
        for (arabic, roman) in romans {
            while(val >= arabic) {
                val -= arabic
                romanNumeral += roman
            }
        }
        return romanNumeral;
    }
    
    init(_ number:Int){
        self.number = number
    }
}