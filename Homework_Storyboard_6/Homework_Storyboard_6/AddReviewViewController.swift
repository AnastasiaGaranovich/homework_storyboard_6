import UIKit

class AddReviewViewController: UIViewController {
    @IBOutlet weak var reviewTextView: UITextView!
    @IBOutlet weak var rateSegmControl: UISegmentedControl!
    
    var mealReviews: Meal!
    
    @IBAction func saveReviewButtonPressed(_ sender: UIButton) {
        mealReviews.reviews.append(Review(date: Date(), review: reviewTextView.text, rate: rateSegmControl.selectedSegmentIndex))
        Defaults.saveReview(reviews: mealReviews.reviews)
        dismiss(animated: true, completion: nil)
    }
}
