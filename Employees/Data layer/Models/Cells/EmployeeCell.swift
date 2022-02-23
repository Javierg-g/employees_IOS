import UIKit

class EmployeeCell: UITableViewCell{
    
    static let identifier = "EmployeeCellId"
    
    @IBOutlet var employeeName:UILabel!
    @IBOutlet var employeeRole:UILabel!
    @IBOutlet var employeeSalay:UILabel!
    
    var employee: Employee?{
        didSet {renderUI()}
    }
    
    private func renderUI() {
        guard let employee = employee else { return }
        
        
        /*NetworkManager.shared.getAppetizerImage(spriteURL: food.imageURL){
            image in
            DispatchQueue.main.async {
                self.plateImage.image = image
                self.setNeedsLayout()
                self.layoutIfNeeded()
            }
        }*/
        
        employeeName.text = "Javier"
        
    
        
    }

    
}
