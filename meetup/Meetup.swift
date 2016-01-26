import Foundation

class Meetup {
    let Year: Int
    let Month: Int
    
    init(year: Int, month: Int) {
        self.Year = year
        self.Month = month
    }
    
    func day(dayOfWeek: Int, which: String) -> (date: NSDate?, description: String) {
        guard let whichOption = WhichOptions(rawValue: which) else {
            return (nil, "")
        }
        switch whichOption {
        case .first:
            return (getDayOfWeek(dayOfWeek, from: 1, to: 7))
        case .second:
            return (getDayOfWeek(dayOfWeek, from: 8, to: 14))
        case .third:
            return (getDayOfWeek(dayOfWeek, from: 15, to: 21))
        case .fourth:
            return (getDayOfWeek(dayOfWeek, from: 22, to: 28))
        case .last:
            return (getDayOfWeek(dayOfWeek, from: 22, to: 31))
        case .teenth:
            return (getDayOfWeek(dayOfWeek, from: 13, to: 19))
        }
    }
    
    func getDayOfWeek(dayOfWeek: Int, from: Int, to: Int) -> (date: NSDate?, description: String) {
        let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        for var i = to; i >= from; i-- { //Start at end for 'last' case
            let dateString = "\(self.Year)-\(self.Month)-\(i)"
            if let date = dateFormatter.dateFromString(dateString) {
                let myComponents = myCalendar.components(.Weekday, fromDate: date)
                let weekDay = myComponents.weekday
                if(weekDay == dayOfWeek) {
                    return (date, dateFormatter.stringFromDate(date))
                }
            }

        }
        return (nil, "")
    }
    
    enum WhichOptions: String {
        case first = "1st"
        case second = "2nd"
        case third = "3rd"
        case fourth = "4th"
        case last = "last"
        case teenth = "teenth"
    }
    
}