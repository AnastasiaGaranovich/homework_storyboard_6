import UIKit

class MealViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mealImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var mealDescription: Meal!
    
    @IBAction func reviewsButtonPressed(_ sender: UIButton) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "ReviewViewController") as! ReviewViewController
        viewController.mealReview = mealDescription
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func addReviewButtonPressed(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = mealDescription.name
        mealImage.image = mealDescription.image
        descriptionLabel.text = mealDescription.description
        ratingLabel.text = String(mealDescription.averageRating)
    }
    
}
