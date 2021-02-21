import UIKit

class Meal {
    var name = ""
    var description = ""
    var image: UIImage!
    var reviews = [Review]()
    
    init(name: String, description: String, image: UIImage, reviews: [Review]) {
        self.name = name
        self.description = description
        self.image = image
        self.reviews = reviews
    }
}
