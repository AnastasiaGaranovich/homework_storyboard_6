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
    
    func checkRating() -> String {
        var stars = ""
        for _ in 0...self.rate - 1 {
            stars += "⭐"
        }
        return stars
    }
}
