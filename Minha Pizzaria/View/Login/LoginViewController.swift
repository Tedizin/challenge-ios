//
//  LoginViewController.swift
//  Minha Pizzaria
//
//  Created by Henrique Silva on 22/04/21.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signInButton(_ sender: Any) {
        let email = userTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        Service().signIn(email: email, password: password) { response in
            guard let response = response
            else {
                // Aqui vai ser exibido um alerta de erro
                print("Erro ao logar")
                return
            }
            //Aqui vai ser passado os valor para tela de Escolha
            self.userTextField.text = response.tokenType
            print(response)
        }
    }
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Selectors

}
