class Triangle {
    var kind = triangleKind.Default.rawValue
    
    init(_ side1:Double, _ side2: Double, _ side3: Double)
    {
        if(checkForAllErrors(side1, side2, side3)) {
            self.kind = triangleKind.ErrorKind.rawValue
        }
        else if(side1 == side2 && side2 == side3) {
            self.kind = triangleKind.Equilateral.rawValue;
        }
        else if(side1 == side2 || side2 == side3 || side1 == side3) {
            self.kind = triangleKind.Isosceles.rawValue;
        }
        else {
            self.kind = triangleKind.Scalene.rawValue;
        }
    }
    
    private func checkForAllErrors(side1:Double, _ side2: Double, _ side3: Double) -> Bool
    {
        return checkForError(side1, side2, side3) || checkForError(side2, side3, side1) || checkForError(side3, side1, side2);
    }
    private func checkForError(side1:Double, _ side2: Double, _ side3: Double) -> Bool
    {
        return side1 + side2 <= side3
    }
    
    enum triangleKind:String {
        case Equilateral = "Equilateral"
        case Isosceles = "Isosceles"
        case Scalene = "Scalene"
        case ErrorKind = "ErrorKind"
        case Default = ""
    }
    
}
