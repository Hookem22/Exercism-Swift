class Year {
    let CalendarYear: Int
    var isLeapYear: Bool {
        get {
            if(self.CalendarYear % 400 == 0) {
                return true
            } else if (self.CalendarYear % 100 == 0) {
                return false
            } else if (self.CalendarYear % 4 == 0) {
                return true
            }
            return false
        }
    }
    
    init(calendarYear: Int) {
        self.CalendarYear = calendarYear
    }
}

