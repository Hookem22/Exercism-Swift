
extension Array {

    func keep(constraint: (Element) -> Bool) -> [Element] {
        var array = [Element]()
        for item in self {
            if(constraint(item)) {
                array.append(item)
            }
        }
        return array
    }
    
    func discard(constraint: (Element) -> Bool) -> [Element] {
        var array = [Element]()
        for item in self {
            if(!constraint(item)) {
                array.append(item)
            }
        }
        return array
    }
}