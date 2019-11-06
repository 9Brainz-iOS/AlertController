//
//  ViewController.swift
//  AlertController_Swift
//
//  Created by Hardik Trivedi on 06/11/19.
//  Copyright © 2019 9Brainz. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtMsg: UITextField!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnShowAlertTapped(_ sender: Any)
    {
        self.view.endEditing(true)
        
        let strTitle: String = (self.txtTitle.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines))!
        let strMsg: String = (self.txtMsg.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines))!
        
        if strTitle == "" || strMsg == "" {
            
            Utility.shwoAlertControllerInViewController(vc: self, withTitle: "Empty Text", andMessage: "Both text required for Show this alert!", withButtons: ["Ok"], completion: nil)
        } else {
            
            Utility.shwoAlertControllerInViewController(vc: self, withTitle: strTitle, andMessage: strMsg, withButtons: ["Ok"]) { (intIndex) in
                
                if intIndex == 0 {
                    
                    print("OK button clicked")
                    // do your coding stuff here
                }
            }
        }
    }
    
    @IBAction func btnShowWithTwoAlertTapped(_ sender: Any)
    {
        self.view.endEditing(true)
        
        Utility.shwoAlertControllerInViewController(vc: self, withTitle: "Two Button", andMessage: "Are you sure?", withButtons: ["No", "Yes"]) { (intIndex) in
            
            if intIndex == 0 {
                
                print("NO button clicked")
                // do your coding stuff here
            } else if intIndex == 1 {
                
                print("YES button clicked")
                // do your coding stuff here
            }
        }
    }
    
    @IBAction func btnShowWithThreeAlertTapped(_ sender: Any)
    {
        self.view.endEditing(true)
        
        Utility.shwoAlertControllerInViewController(vc: self, withTitle: "Three Button", andMessage: "Love this app! Give your important Rate about it.", withButtons: ["Rate Now", "Later", "No, Thanks"]) { (intIndex) in
            
            if intIndex == 0 {
                
                print("RATE NOW button clicked")
                // do your coding stuff here
            } else if intIndex == 1 {
                
                print("LATER button clicked")
                // do your coding stuff here
            } else if intIndex == 2 {
                           
                print("NO THANKS button clicked")
                // do your coding stuff here
            }
        }
    }
    
    @IBAction func btnAlertWithTitleTapped(_ sender: Any)
    {
        self.view.endEditing(true)
        
        Utility.shwoAlertControllerInViewController(vc: self, withTitle: "No Internet Connection", andMessage: nil, withButtons: ["Ok"], completion: nil)
    }
    
    @IBAction func btnAlertWithMsgTapped(_ sender: Any)
    {
        self.view.endEditing(true)
        
        Utility.shwoAlertControllerInViewController(vc: self, withTitle: nil, andMessage: "Task complete successfully!", withButtons: ["Ok"], completion: nil)
    }
    
}

extension ViewController: UITextFieldDelegate
{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
}
