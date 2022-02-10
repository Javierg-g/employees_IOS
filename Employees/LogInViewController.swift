import Foundation

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var loginButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func goToSignUp (){
        
        if let registerVc = storyboard?.instantiateViewController(identifier: "HomeVc"){
            registerVc.modalPresentationStyle = .fullScreen
            self.present(registerVc, animated: true, completion: nil)

        }
    }


}
