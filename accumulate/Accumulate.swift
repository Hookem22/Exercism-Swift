
extension Array {
    
    func accumulate<T>(function: (T) -> T) -> [T] {
        var tmp = [T]()
        for item in self {
            if let val = item as? T {
                tmp.append(function(val))
            }
        }
        return tmp
    }
    
    func accumulate<T>(function: (T) -> [T]) -> [[T]] {
        var tmp = [[T]]()
        for item in self {
            if let val = item as? T {
                tmp.append(function(val))
            }
        }
        return tmp
    }
}