import Foundation

class ApiManager {
    var baseURL: String = "https://api.randomuser.me/"
    
    func getRandomUser(completion: @escaping (Any) -> Void) {
        var request = URLRequest(url: URL(string: baseURL)!)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) {data, response, err in
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!)
                completion(json)
            } catch let error {
                print(error)
            }
        }.resume()
    }

}