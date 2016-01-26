class ETL {
    
    static func transform(old: Dictionary<Int, Array<String>>) -> Dictionary<String, Int> {
        var dict = [String: Int]()
        
        for (val, letterArray) in old {
            for letter in letterArray {
                dict[letter.lowercaseString] = val
            }
        }        
        
        return dict
    }
}