import Foundation

class Defaults {
    private static var reviewKey = "reviewKey"
    static func saveReview(reviews: [Review]) {
        UserDefaults.standard.set(try? PropertyListEncoder().encode(reviews), forKey: reviewKey)
    }
    static func loadReview() -> [Review] {
        guard let userData = UserDefaults.standard.value(forKey: reviewKey) as? Data else {
            let reviews = [Review]()
            UserDefaults.standard.set(try? PropertyListEncoder().encode(reviews), forKey: reviewKey)
            return reviews
        }
        return try! PropertyListDecoder().decode([Review].self, from: userData)
    }
}
