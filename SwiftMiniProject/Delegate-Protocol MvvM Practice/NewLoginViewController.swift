//
//  NewLoginViewController.swift
//  SwiftMiniProject
//
//  Created by Rakesh Lahkar on 11/05/22.
//

import UIKit

class NewLoginViewController: UIViewController {
   
    
    //var modelView = ViewModelSelegate()
    let usernameTextField = BindingTextField()
    let passwordTextField = BindingTextField()
    
    
    let action = LoginAction()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        setupUI()
        self.view.backgroundColor = UIColor.white
    }
    
    @objc func login() {
        action.sendValue(from: usernameTextField.text, passwordTextField: passwordTextField.text)
        
    }
    
    private func setupUI() {
        
        
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.placeholder = "Enter First Username"
        usernameTextField.backgroundColor = UIColor.lightGray
        
        
       
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = UIColor.lightGray
        
        
        
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
    
    

}






