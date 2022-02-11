import Foundation

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Register"
        
        registerButton.layer.cornerRadius = 10
        
    }
}
