//
//  ViewController.swift
//  Checklists
//
//  Created by Mac on 1/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    let row0text = "Walk the Dog"
    let row1text = "Brush Teeth"
    let row2text = "Learn IOS development"
    let row3text = "Soccer Practice"
    let row4text = "Eat Ice cream"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //returns a cell that is found by row address and adds/removes checkmark
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .none{
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        //deselects row after uses presses
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = row0text
        }  else if indexPath.row == 1{
            label.text = row1text
        }  else if indexPath.row == 2{
            label.text = row2text
        }  else if indexPath.row == 3{
            label.text = row3text
        }  else if indexPath.row == 4{
            label.text = row4text
        }
        return cell
    }

}

