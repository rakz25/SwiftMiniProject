//
//  ViewModel.swift
//  SwiftMiniProject
//
//  Created by Rakesh Lahkar on 11/05/22.
//

import Foundation


protocol ViewModelDelegate: LoginAction {
    
    func sendValue(from emailTextField: String?, passwordTextField: String?)
   
    
}


class LoginAction {
    
  weak var delegate: ViewModelDelegate?
    func sendValue(from emailTextField: String?, passwordTextField: String?){        print("Email:",emailTextField ?? "")
    }
    
  
   
}
