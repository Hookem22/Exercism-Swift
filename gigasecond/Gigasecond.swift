import Foundation

class Gigasecond {
    let SECONDS = 1000000000.0
    let description: String
    
    init?(from: String) {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.timeZone = NSTimeZone(abbreviation: "GMT")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        
        if let fromDate = dateFormatter.dateFromString(from) {
            let birthday = fromDate.dateByAddingTimeInterval(SECONDS)
            self.description = dateFormatter.stringFromDate(birthday)
        } else {
            self.description = ""
            return nil
        }
    }
}