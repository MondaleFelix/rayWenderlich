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
    
    var row0Checked = false
    var row1Checked = false
    var row2Checked = false
    var row3Checked = false
    var row4Checked = false
    
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
            
            if indexPath.row == 0{
                row0Checked = !row0Checked
            }
            if indexPath.row == 1{
                row1Checked = !row1Checked
            }
            if indexPath.row == 2{
                row2Checked = !row2Checked
            }
            if indexPath.row == 3{
                row3Checked = !row3Checked
            }
            if indexPath.row == 4{
                row4Checked = !row4Checked
            }
            
            configureCheckmark(for: cell, at: indexPath)
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
        configureCheckmark(for: cell, at: indexPath)
        return cell
    }

    func configureCheckmark(for cell : UITableViewCell, at indexPath: IndexPath){
        
        var isChecked = false
        if indexPath.row == 0 {
            isChecked = row0Checked
        } else if indexPath.row == 1 {
            isChecked = row1Checked
        } else if indexPath.row == 2 {
            isChecked = row2Checked
        } else if indexPath.row == 3 {
            isChecked = row3Checked
        } else if indexPath.row == 4 {
            isChecked = row4Checked
        }
        
        if isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
            
        }
    }
    
}

