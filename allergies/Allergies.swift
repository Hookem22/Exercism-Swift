class Allergies {
    var AllergyDict = [AllergyType: Bool]()
    
    init(_ allergyList: Int) {
        CreateAllergyList(allergyList)
    }
    
    init(_ allergyList: UInt) {
        CreateAllergyList(Int(allergyList))
    }
    
    private func CreateAllergyList(allergyList: Int) {
        var tmp = allergyList
        for val in AllergyType.allValues {
            if(tmp >= val.rawValue) {
                self.AllergyDict[val] = true
                tmp -= val.rawValue
            }
            else {
                self.AllergyDict[val] = false
            }
        }
    }
    
    func hasAllergy(type: AllergyType) -> Bool {
        return self.AllergyDict[type]!
    }
    
    enum AllergyType: Int {
        case Eggs = 1
        case Peanuts = 2
        case Shellfish = 4
        case Strawberries = 8
        case Tomatoes = 16
        case Chocolate = 32
        case Pollen = 64
        case Cats = 128
        
        //These must be in reverse order of value
        static let allValues = [Cats, Pollen, Chocolate, Tomatoes, Strawberries, Shellfish, Peanuts, Eggs]
    }
}