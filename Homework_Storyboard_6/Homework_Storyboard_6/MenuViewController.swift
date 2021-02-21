import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AppData.meals.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
        cell.imageView?.image = AppData.meals[indexPath.row].image
        cell.textLabel?.text = AppData.meals[indexPath.row].name
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let meal = AppData.meals[indexPath.row]
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "MealViewController") as! MealViewController
        viewController.mealDescription = meal
        navigationController?.pushViewController(viewController, animated: true)
    }
}
