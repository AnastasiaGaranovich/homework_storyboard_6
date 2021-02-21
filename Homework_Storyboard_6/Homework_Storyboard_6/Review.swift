import Foundation

class Review {
    var date = Date()
    var review = ""
    var rate = ""
    
    init(date: Date, review: String, rate: String) {
        self.date = date
        self.review = review
        self.rate = rate
    }
}
