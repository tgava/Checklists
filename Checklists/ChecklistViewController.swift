//
//  ChecklistViewController.swift
//  Checklists
//
//  Created by Tichafa Gava on 05/10/2016.
//  Copyright © 2016 Tichafa Gava - Ketts. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row % 5 == 0 {
            label.text = "Drop off kids at school"
        } else if indexPath.row % 5 == 1 {
            label.text = "Kick iOS bottom"
        } else if indexPath.row % 5 == 2 {
            label.text = "Have some kind of lunch"
        } else if indexPath.row % 5 == 3 {
            label.text = "Apply for jobs"
        } else if indexPath.row % 5 == 4 {
            label.text = "Have time with wife and kids"
        }
        
        return cell
        
    }
}

