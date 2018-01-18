//
//  ViewController.swift
//  Checklists
//
//  Created by Mac on 1/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    var items : [ChecklistItem]
    
    required init?(coder aDecoder: NSCoder) {
        
        items = [ChecklistItem]()
        
        let row0Item = ChecklistItem()
        row0Item.text = "Walk the Dog"
        row0Item.checked = false
        items.append(row0Item)
        
        
        let row1Item = ChecklistItem()
        row1Item.text = "Brush my teeth"
        row1Item.checked = false
        items.append(row1Item)
        
        let row2Item = ChecklistItem()
        row2Item.text = "Learn IOS Development"
        row2Item.checked = false
        items.append(row2Item)
        
        let row3Item = ChecklistItem()
        row3Item.text = "Soccer Practice"
        row3Item.checked = false
        items.append(row3Item)
        
        let row4Item = ChecklistItem()
        row4Item.text = "Eat Ice cream"
        row4Item.checked = false
        items.append(row4Item)
        
        let row5Item = ChecklistItem()
        row5Item.text = "Buy Food"
        row5Item.checked = true
        items.append(row5Item)
        
        let row6Item = ChecklistItem()
        row6Item.text = "Cook the Food"
        row6Item.checked = true
        items.append(row6Item)
        
        let row7Item = ChecklistItem()
        row7Item.text = "Eat the Food"
        row7Item.checked = false
        items.append(row7Item)
        
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //returns a cell that is found by row address and adds/removes checkmark
        if let cell = tableView.cellForRow(at: indexPath){
            
            let item = items[indexPath.row]
            item.toggleChecked()
            
            configureCheckmark(for: cell, with: item)
        //deselects row after uses presses
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let item = items[indexPath.row]
        
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        return cell
    }

    func configureText(for cell: UITableViewCell, with item: ChecklistItem){
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text

    }
    
    func configureCheckmark(for cell : UITableViewCell, with item: ChecklistItem){
        
        if item.checked{
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
            
        }
    }
    
//  adds new item in the checklist, currently value is being hardcoded
    @IBAction func addItem(_ sender: Any) {

    /*
         To add a new row in the checklist we must:
         1) Create a new checklistItem
         2) Initialize a value
         3) Insert row into Tableview at given address
                                                        */
        
        let newRowIndex = items.count
        let item = ChecklistItem()
        let titles = ["Eat one fruit", "Eat two fruits", "Eat three fruits", "Eat four fruits","Eat five fruits"]
        var randomIndex = Int(arc4random_uniform(UInt32(titles.count)))
        item.text = titles[randomIndex]
        item.checked = true
        
        items.append(item)

//      address to where new row will be inserted
        let indexPath = IndexPath(row: newRowIndex, section: 0)
//      Tableview is expecting multiple row so it must be in an array
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .automatic)
    }
}

