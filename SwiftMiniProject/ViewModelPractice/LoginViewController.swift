//
//  LoginViewController.swift
//  SwiftMiniProject
//
//  Created by Rakesh Lahkar on 07/05/22.
//

import UIKit

class LoginViewController: UIViewController {
 
    // Create an instance of LoginViewModel
    private var loginVM = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // First construct user Interface
        
        // Going to create an username and password TextBox
        
        setupUI()
        self.view.backgroundColor = UIColor.white
    }
    
    @objc func login() {
        
        print(loginVM.username)
        print(loginVM.password)
        
        
    }
    
   private func setupUI() {
        
        let usernameTextField = BindingTextField()
       usernameTextField.borderStyle = .roundedRect
       usernameTextField.placeholder = "Enter Username"
       usernameTextField.backgroundColor = UIColor.lightGray
       usernameTextField.bind { [weak self] text in
           self?.loginVM.username = text
           
       }
       
       
       let passwordTextField = BindingTextField()
       passwordTextField.placeholder = "Enter Password"
       passwordTextField.isSecureTextEntry = true
       passwordTextField.borderStyle = .roundedRect
       passwordTextField.backgroundColor = UIColor.lightGray
       passwordTextField.bind {
          [weak self] text in self?.loginVM.password = text
       }
       
       
       let loginButton = UIButton()
       loginButton.setTitle("Login", for: .normal)
       loginButton.backgroundColor = UIColor.red
       loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
       
      
       let stackView = UIStackView(arrangedSubviews: [usernameTextField,passwordTextField,loginButton])
       
       stackView.backgroundColor = UIColor.green
       stackView.translatesAutoresizingMaskIntoConstraints = false
       stackView.axis = .vertical
       stackView.spacing = 20
       stackView.distribution = .fillEqually
       
       
       
       self.view.addSubview(stackView)
       
       stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
       stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
       stackView.widthAnchor.constraint(equalToConstant: 200).isActive = true
       
    }
    
    
    var textChangeed : (String) -> Void = { _ in }
    
    func binding(callback: @escaping (String) -> Void) {
        
        
    }

    
   
}
