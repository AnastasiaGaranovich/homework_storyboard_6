import UIKit

class MealViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mealImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var reviewsButton: UIButton!
    
    var mealDescription: Meal!
    
    @IBAction func reviewsButtonPressed(_ sender: UIButton) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "ReviewViewController") as! ReviewViewController
        viewController.mealReview = mealDescription
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func addReviewButtonPressed(_ sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "AddReviewViewController") as! AddReviewViewController
        viewController.mealReviews = mealDescription
        viewController.onDone = {
            self.viewWillAppear(true)
        }
        present(viewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = mealDescription.name
        mealImage.image = mealDescription.image
        descriptionLabel.text = mealDescription.description
        ratingLabel.text = mealDescription.checkRating()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if(mealDescription.reviews.isEmpty) {
            reviewsButton.isHidden = true
        }
        else {
            reviewsButton.setTitle("Отзывы (\(mealDescription.reviews.count) отзывов)", for: .normal)
        }
    }
    
}
