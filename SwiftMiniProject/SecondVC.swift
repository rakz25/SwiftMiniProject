//
//  SecondVC.swift
//  SwiftMiniProject
//
//  Created by Rakesh Lahkar on 25/04/22.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        title = selectedString.uppercased()
    
        let label = UILabel(frame: view.bounds)
        view.addSubview(label)
        label.textAlignment = .center
        
        for item in relatedItems {
            
            label.text = (label.text ?? "") + "" + item
            
        }
    
    
    }
    
    private let selectedString : String
    private let relatedItems : [String]
    
    
    init(selectedString:String,relatedItems:[String]){
        self.relatedItems = relatedItems
        self.selectedString = selectedString
        
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
