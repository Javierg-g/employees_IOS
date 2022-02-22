import Foundation

import UIKit

class RecoverPasswordViewController: UIViewController {
    
    @IBOutlet var recoverButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Password"
        
        recoverButton.layer.cornerRadius = 20
        
                
    }
    
    @IBAction func closeDetail(_ sender: Any) {
        let alertController = UIAlertController(title: "Correo de recuperación enviado", message: "Revise su bandeja de entrada por favor", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Entendido", style: .cancel, handler: { _ in NSLog("The \"cancel\" alert occured.")
                        
            self.dismiss(animated: true, completion: nil)
        })
        alertController.addAction(cancelAction)

        present(alertController, animated: true, completion: nil)
                        
    }
    

    
}
