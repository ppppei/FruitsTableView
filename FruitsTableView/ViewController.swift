//
//  ViewController.swift
//  FruitsTableView
//
//  Created by PPEI on 9/22/2564 BE.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let fruits = ["Avocado","Banana","Durian","Kiwi","Mango","Pear","Pineapple",
               "Pomegranate","Strawberry","Watermelon"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let fruit = fruits[indexPath.row]
        
        cell.imgView.image = UIImage(named: fruit)
        cell.lblImage.text = fruit
        
        return cell
                        
    }

}

