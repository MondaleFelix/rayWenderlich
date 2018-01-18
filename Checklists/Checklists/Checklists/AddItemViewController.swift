//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Mac on 1/17/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }

    
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}