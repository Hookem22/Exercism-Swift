class GradeSchool {
    var roster = [Int: [String]]()
    var sortedRoster: Dictionary<Int,Array<String>> {
        get {
            let sortedArray = self.roster.sort { $0.0 < $1.0 }
            var sortedDict = [Int: [String]]()
            for (key, value) in sortedArray {
                sortedDict[key] = value
            }
            return sortedDict
        }
    }
    
    func addStudent(name: String, grade: Int) {
        var students = studentsInGrade(grade)
        students.append(name)
        self.roster[grade] = students
    }
    
    func studentsInGrade(grade: Int) -> Array<String> {
        if let gradeNames = self.roster[grade] {
            return gradeNames
        }
        else {
            return [String]()
        }
    }
}