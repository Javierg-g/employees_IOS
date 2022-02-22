import Foundation
import UIKit
import AVFoundation



class ProfileViewController: UIViewController,UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    @IBOutlet var nameEditText: UITextField!
    @IBOutlet var workRoleEditText: UITextField!
    @IBOutlet var bioEditText: UITextField!
    @IBOutlet var salaryEditText: UITextField!
    @IBOutlet var signOutButton: UIButton!
    
    @IBOutlet var imageProfile: UIImageView!
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Profile"
        signOutButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func signOut(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Aviso", message: "Va a cerrar sesión", preferredStyle: .alert)
        
        let closeAction = UIAlertAction(title: "Cancelar", style: .default, handler: { _ in NSLog("The \"cancel\" alert occured.")
                        
            self.dismiss(animated: true, completion: nil)
        })
        
        let cancelAction = UIAlertAction(title: "Salir", style: .destructive, handler: { _ in NSLog("The \"exit\" alert occured.")
            if let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginVC"){
                loginVC.modalPresentationStyle = .fullScreen
                self.present(loginVC, animated: true, completion: nil)

            }
                        
        })
        
        alertController.addAction(closeAction)
        alertController.addAction(cancelAction)

        present(alertController, animated: true, completion: nil)
        
    }
    @IBAction func buttonImageTapped(){
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let camara = UIAlertAction(title: "Hacer foto", style: .default, handler: {(action) in
            self.picker.sourceType = .camera
            self.picker.cameraCaptureMode = .photo
            self.picker.allowsEditing = true
            self.picker.delegate = self
            self.present(self.picker, animated: true)
        })
        let galeria = UIAlertAction(title: "Seleccionar foto", style: .default, handler: {(action) in
            self.picker.sourceType = .photoLibrary
            self.picker.delegate = self
            self.picker.allowsEditing = true
            self.present(self.picker, animated: true)
        })
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel  , handler: {(action) in
            
        })
        alertController.addAction(camara)
        alertController.addAction(galeria)
        alertController.addAction(cancelar)

        self.present(alertController, animated: true, completion: nil)
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else{
            return
        }
        imageProfile.image = image
        
    }
}
