import Foundation

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var usernameEditText: UITextField!
    @IBOutlet var passwordEditText: UITextField!
    @IBOutlet var showPassButton: UIButton!
    @IBOutlet var loginButton: UIButton!

    var res = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        
        
        usernameEditText.addTarget(self, action: #selector(LogInViewController.textFieldDidChange(_:)), for: .editingChanged)
        
        
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        if(usernameEditText.text!.count <= 25){
            res = usernameEditText.text!
        }else{
            usernameEditText.text = res
        }
        
    }
    
    
    @IBAction func goToSignUp (){
        
        if let registerVc = storyboard?.instantiateViewController(identifier: "HomeVc"){
            registerVc.modalPresentationStyle = .fullScreen
            self.present(registerVc, animated: true, completion: nil)

        }
    }
    @IBAction func goToPasswordRecovery (){
        
        if let recoverVc = storyboard?.instantiateViewController(identifier: "recoverVc"){
            recoverVc.modalPresentationStyle = .automatic
            self.present(recoverVc, animated: true, completion: nil)

        }
    }
    
    @IBAction func showPassword (){
        
        showPassButton.isSelected = !showPassButton.isSelected
        passwordEditText.isSecureTextEntry.toggle()
        
    }
    


}
