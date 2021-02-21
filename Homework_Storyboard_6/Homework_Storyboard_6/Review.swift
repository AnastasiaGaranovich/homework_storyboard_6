import Foundation

class Review: Codable {
    var date = Date()
    var review = ""
    var rate = 0
    
    init(date: Date, review: String, rate: Int) {
        self.date = date
        self.review = review
        self.rate = rate
    }
}
