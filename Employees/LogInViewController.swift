import Foundation

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var registerButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
        registerButton.layer.cornerRadius = 10
        
        

        
    }
    
    @IBAction func goToSignUp (){
        
        if let vc3 = storyboard?.instantiateViewController(identifier: "SignUpVc") as? ViewController3{
                
            navigationController?.pushViewController(vc3, animated: true)
        }
    }


}
