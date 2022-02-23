import Foundation

struct Response: Codable{
    
    var status: Int?
    var msg: String?
    var employeeList : [Employee]?
    var employeeDetails : [Employee]?
    
}
