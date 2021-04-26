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
        let email = userTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        Service().signIn(email: email, password: password) { response in
            guard let response = response
            else {
                // Aqui vai ser exibido um alerta de erro
                print("Erro")
                return
            }
            //Aqui vai ser passado os valor para tela de Escolha
            self.userTextField.text = response.tokenType
            print(response)
        }
    }
    
    //MARK: - Selectors

}
