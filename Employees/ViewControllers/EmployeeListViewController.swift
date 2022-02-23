import Foundation

import UIKit

class EmployeeListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    //var response: Response?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "List"
        
        self.tableView.separatorStyle = .none
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
        //return response?.request.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeCellId", for: indexPath) as? EmployeeCell {
            //cell.food = response?.request[indexPath.row]
            return cell
        }
        else {
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let detailViewController = storyboard?.instantiateViewController(identifier: "DetailEmployeeViewControllerId") as? DetailEmployeeViewController{

            detailViewController.modalPresentationStyle = .automatic
            self.present(detailViewController, animated: true, completion: nil)
            
        }
        
    }
}


