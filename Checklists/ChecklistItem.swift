//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Tichafa Gava on 10/10/2016.
//  Copyright © 2016 Tichafa Gava - Ketts. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
        
    }
    
}
