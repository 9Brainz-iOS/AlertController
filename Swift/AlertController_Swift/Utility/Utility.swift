//
//  Utility.swift
//  AlertController_Swift
//
//  Created by Hardik Trivedi on 06/11/19.
//  Copyright © 2019 9Brainz. All rights reserved.
//

import UIKit

class Utility: NSObject
{
    
    // INPUT Parameter
    
    // vc       : ViewController (in which you want to display Alert)
    // title    : Title text of AlertController
    // message  : Message text of AlertController
    // button   : Multiple buttons for AlertController
    
    static func shwoAlertControllerInViewController(vc: UIViewController, withTitle title: String?, andMessage message: String?, withButtons button: [String], completion:((_ index: Int) -> Void)!) -> Void
    {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        for index in 0 ..< button.count  {

            let action = UIAlertAction(title: button[index], style: .default, handler: { (alert: UIAlertAction!) in

                if completion != nil {

                    completion(index)
                }
            })

            alertController.addAction(action)
        }

        vc.present(alertController, animated: true, completion: nil)
    }

}
