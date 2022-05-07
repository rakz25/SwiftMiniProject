//
//  BindingTextField.swift
//  SwiftMiniProject
//
//  Created by Rakesh Lahkar on 07/05/22.
//

import Foundation
import UIKit


class BindingTextField : UITextField {
    
    var textChanged: (String) -> Void = { _ in }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    // Whenever user types on Binding Text field capture or listen the value
    private func commonInit() {
        
        addTarget(self, action: #selector(didTapChanged), for: .editingChanged)
    }
    
    // Make sure to bind didChanged and didTapChanged
func bind(callback: @escaping (String) -> Void) {
        
        textChanged = callback
    }
    
   @objc private func didTapChanged(with textField:UITextField){
        
        // subscribe to changes(notifies when updated)
    
       if let text = textField.text {
           
           textChanged(text)
       }
        
        
    }
}
