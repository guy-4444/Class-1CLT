import UIKit

class ViewController: UIViewController {
        
    
    @IBOutlet weak var main_LBL_title: UILabel!
    @IBOutlet weak var main_BTN_add: UIButton!
    
    var str = "A"
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addClicked(_ sender: UIButton) {
        str += "\nA"
        main_LBL_title.text = str
    }
    
}
