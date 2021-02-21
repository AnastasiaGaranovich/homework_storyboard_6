import Foundation

extension Date {
    static func dateFromNumber(year: Int, month: Int, day: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        let userCalendar = Calendar(identifier: .gregorian)
        return userCalendar.date(from: dateComponents) ?? Date()
    }
    var toString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YY"
        return dateFormatter.string(from: self)
    }
}
