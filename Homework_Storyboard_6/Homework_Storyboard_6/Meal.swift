import UIKit

class Meal {
    var id = 0
    var name = ""
    var description = ""
    var image: UIImage!
    var reviews = [Review]()
    
    var averageRating: Double {
        if reviews.isEmpty {
            return 0
        }
        var summ = 0.0
        for review in reviews {
            summ += Double(review.rate)
        }
        return summ / Double(reviews.count)
    }
    
    init(id: Int, name: String, description: String, image: UIImage, reviews: [Review]) {
        self.id = id
        self.name = name
        self.description = description
        self.image = image
        self.reviews = reviews
    }
}
