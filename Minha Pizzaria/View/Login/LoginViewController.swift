//
//  LoginViewController.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 22/04/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.queryAPI()

    }
    
    //MARK: - Properties
    
    @IBAction func signInButton(_ sender: Any) {
        self.queryAPI()    }
    
    //MARK: - Selectors
    
    //MARK: - API
    
    func queryAPI(){
        let baseURL = "https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1"
        let path = "/signin"
        
        guard let url = URL(string: baseURL + path) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, request, error) in
            if let error = error {
                print("Error request \(error)")
                return
            }
            do {
                guard let dataReturn = data,
                      
                      let objectJSON = try JSONSerialization.jsonObject(with: dataReturn, options: []) as? [String: Any],
                      let email = objectJSON["email"] as? [String: Any],

                      let _ = email["password"] as? [String: Any]
                else {
                    return
                }
                DispatchQueue.main.async {
                }
            }
            catch {
                print("Erro ao formatar o retorno.")
            }
        }
        task.resume()
    }

}
