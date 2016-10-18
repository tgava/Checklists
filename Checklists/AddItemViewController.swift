//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Tichafa Gava on 11/10/2016.
//  Copyright © 2016 Tichafa Gava - Ketts. All rights reserved.
//

import Foundation
import UIKit

// Add delegation and protocol definitions here

protocol AddItemViewControllerDelegate: class {
    func addItemViewControllerDidCancel (controller: AddItemViewController)
    
    func addItemViewController(controller: AddItemViewController, didFinishAddingItem: ChecklistItem)
}

class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    weak var delegate: AddItemViewControllerDelegate?
    
    @IBAction func cancel() {
        delegate?.addItemViewControllerDidCancel(controller: self)
    }
    
    @IBAction func done() {
        let item = ChecklistItem()
        item.text = textField.text!
        item.checked = false
        
        delegate?.addItemViewController(controller: self, didFinishAddingItem: item)
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText: NSString = textField.text! as NSString
        let newText:NSString = oldText.replacingCharacters(in: range, with: string) as NSString
        
        
            doneBarButton.isEnabled = (newText.length > 0)
        
        return true
        
    }
}

