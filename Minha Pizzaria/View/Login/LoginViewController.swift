//
//  LoginViewController.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 22/04/21.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Properties
    
    @IBAction func signInButton(_ sender: Any) {
        self.queryAPI()
        
    }
    
    //MARK: - Selectors
    
    //MARK: - API
    
    func queryAPI(){
        
        let baseURL = "https://p3teufi0k9.execute-api.us-east-1.amazonaws.com"
        let path = "/v1/signin"
        
        guard let url = URL(string: baseURL + path)
        
        else {
            return
        }
        
        let payload = SignInPayload(email: "user@xds.com.br", password: "223344")
        
        AF.request(url, method: .post, parameters: payload, encoder: JSONParameterEncoder.default).responseDecodable(of: SignInResponse.self) { (result) in
            guard let response = result.value, result.error == nil else {
                print("Error request. \(String(describing: result.error))")
                return
            }
            print(response)
        }.resume()
    }

}
