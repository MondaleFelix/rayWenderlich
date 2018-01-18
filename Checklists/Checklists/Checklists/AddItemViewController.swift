//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Mac on 1/17/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//      removes large title display
        navigationItem.largeTitleDisplayMode = .never
        
//      sets the delegate so we can access the text field
        textField.delegate = self
        
    }

//  Sets text field to be first responder so keyboard will appear
    override func viewWillAppear(_ animated: Bool) {
        textField.becomeFirstResponder()
    }
    
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
//  Does not allow user to select the cell, when pressing for text field
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
}
