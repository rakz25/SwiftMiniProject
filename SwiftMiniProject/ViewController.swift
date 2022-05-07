//
//  ViewController.swift
//  SwiftMiniProject
//
//  Created by Rakesh Lahkar on 25/04/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

   private let data = [["apple","mango","kiwi"],["allooo","pyaazzz","matarr"]]
    
    let tableView : UITableView = {
       let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let items = data[indexPath.section]
        let vc = SecondVC(selectedString: items[indexPath.row], relatedItems: items)
      //  present(vc, animated: true, completion: nil)
        present(UINavigationController(rootViewController: vc), animated: true, completion: nil)
    }

    

}

