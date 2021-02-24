import UIKit

class AddReviewViewController: UIViewController {
    @IBOutlet weak var reviewTextView: UITextView!
    @IBOutlet weak var rateSegmControl: UISegmentedControl!
    
    var mealReviews: Meal!
    
    var onDone: (() -> ())!
    
    @IBAction func saveReviewButtonPressed(_ sender: UIButton) {
        mealReviews.reviews.append(Review(date: Date(), review: reviewTextView.text, rate: rateSegmControl.selectedSegmentIndex))
        Defaults.saveReview(reviews: mealReviews.reviews, index: mealReviews.id)
        onDone()
        dismiss(animated: true, completion: nil)
    }
}
