//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Cameron Moss on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: -Properties
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var entryTextView: UITextView!
    
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.delegate = self
    
    }
    

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        titleTextField.resignFirstResponder()
        return true
    }

    //MARK: -Actions
    
    @IBAction func clearButton(sender: AnyObject) {
        
        titleTextField.text = ""
        entryTextView.text = ""
        
    }
    @IBAction func saveEntry(sender: AnyObject) {
        let entry = Entry(timestamp: NSDate(), title: titleTextField.text!, bodyText: entryTextView.text!)
        EntryController.sharedInstance.addEntry(entry)
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
