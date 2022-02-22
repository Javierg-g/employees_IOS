import Foundation

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet var workRole: UISegmentedControl!
    
    @IBOutlet var nameEditText: UITextField!
    @IBOutlet var emailEditText: UITextField!
    @IBOutlet var passwordEditText: UITextField!
    @IBOutlet var repeatPassEditText: UITextField!
    @IBOutlet var bioEditText: UITextField!
    @IBOutlet var salaryEditText: UITextField!
    
    @IBOutlet var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Register"
        
        registerButton.layer.cornerRadius = 10
        
    }
}
