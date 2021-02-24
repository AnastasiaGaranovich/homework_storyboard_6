import Foundation

class Defaults {
    private static var reviewKey = "reviewKey"
    static func saveReview(reviews: [Review], index: Int) {
        UserDefaults.standard.set(try? PropertyListEncoder().encode(reviews), forKey: "\(reviewKey)\(index)")
    }
    static func loadReview(index: Int) -> [Review] {
        guard let userData = UserDefaults.standard.value(forKey: "\(reviewKey)\(index)") as? Data else {
            let reviews = [Review]()
            UserDefaults.standard.set(try? PropertyListEncoder().encode(reviews), forKey: "\(reviewKey)\(index)")
            return reviews
        }
        return try! PropertyListDecoder().decode([Review].self, from: userData)
    }
}
