import Foundation

final class DataMapper{
    
    static let shared = DataMapper()
    private init() {}
    
    
    //endpoints
    var loginEP = "login"
    var passwordRecoveryEP = "passwordRecovery"
    var getlistEmployeesEP = "getlistEmployees"
    var profileEP = "profile"
    
    
    //preparar peticiones
    func login(params: [String: Any]?, completion: @escaping (Response?) -> Void) {
        Connection().connection(to: loginEP, params: params, method: "POST") { data in
            guard let data = data else {
                completion(nil)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(Response.self, from: data)
                completion(response)
            } catch {
                completion(nil)
            }
        }
        
    }
    func passwordRecovery(params: [String: Any]?, completion: @escaping (Response?) -> Void) {
        Connection().connection(to: passwordRecoveryEP, params: params, method: "POST") { data in
            guard let data = data else {
                completion(nil)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(Response.self, from: data)
                completion(response)
            } catch {
                completion(nil)
            }
        }
        
    }
    func getlistEmployees(params: [String: Any]?, completion: @escaping (Response?) -> Void) {
        Connection().connection(to: getlistEmployeesEP, params: params, method: "POST") { data in
            guard let data = data else {
                completion(nil)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(Response.self, from: data)
                completion(response)
            } catch {
                completion(nil)
            }
        }
        
    }
    func profile(params: [String: Any]?, completion: @escaping (Response?) -> Void) {
        Connection().connection(to: profileEP, params: params, method: "POST") { data in
            guard let data = data else {
                completion(nil)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(Response.self, from: data)
                completion(response)
            } catch {
                completion(nil)
            }
        }
        
    }
    
    
}
