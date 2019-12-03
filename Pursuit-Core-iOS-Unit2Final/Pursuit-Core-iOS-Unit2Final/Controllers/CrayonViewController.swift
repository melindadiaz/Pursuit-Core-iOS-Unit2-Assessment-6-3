//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var crayonTableView: UITableView!
    
    let crayonReference = Crayon.allTheCrayons

    override func viewDidLoad() {
        super.viewDidLoad()
        
        crayonTableView.dataSource = self
        crayonTableView.delegate = self
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayonReference.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrayonColors", for: indexPath)
        let crayons = crayonReference[indexPath.row]
        
        cell.textLabel?.text = crayons.name
        cell.detailTextLabel?.text = crayons.hex
        cell.backgroundColor = UIColor(red: CGFloat(crayons.red/255), green: CGFloat(crayons.green/255), blue: CGFloat(crayons.blue/255), alpha: 1)
        
         
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let colorView = segue.destination as?
                  ColorViewController,
                  let indexPath = crayonTableView.indexPathForSelectedRow else {
                      return
    }
        colorView.crayon = crayonReference[indexPath.row]
        colorView.navigationItem.title = crayonReference[indexPath.row].name
        
       
    }
    
    
    
}

