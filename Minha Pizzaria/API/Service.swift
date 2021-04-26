//
//  Service.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 22/04/21.
//

import Foundation
import Alamofire

class Service {
    
    let baseURL = "https://p3teufi0k9.execute-api.us-east-1.amazonaws.com"
    
    func signIn(email: String, password: String, completion: @escaping (SignInResponse?) -> Void){
        
        let path = "/v1/signin"
        
        guard let url = URL(string: baseURL + path)
        
        else {
            return
        }
        
        let payload = SignInPayload(email: email, password: password)
        
        AF.request(url, method: .post, parameters: payload, encoder: JSONParameterEncoder.default).responseDecodable(of: SignInResponse.self) { (result) in
            guard let response = result.value, result.error == nil else {
                completion(nil)
                return
            }
            completion(response)
        }.resume()
    }
}
