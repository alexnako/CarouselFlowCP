//
//  settingsViewController.swift
//  Carousel
//
//  Created by Alex Nako on 10/31/15.
//  Copyright © 2015 Alex Nako. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = imageView.image!.size
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func signoutButton(sender: AnyObject) {
        
        // alert container
        let alertController = UIAlertController(title: "", message: "Are you sure you want to sign out?", preferredStyle: .ActionSheet)
        
        // create an Cancel action
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // handle response here.
            }

        // add the Cancel action to the alert controller
        alertController.addAction(cancelAction)
        
        // create an OK action
        let OKAction = UIAlertAction(title: "Sign Out", style: .Default) { (action) in
            
            self.performSegueWithIdentifier("signoutSegue", sender: self)
            // handle response here.
        }
        // add the OK action to the alert controller
        alertController.addAction(OKAction)
        
        
        self.presentViewController(alertController, animated: true)
            {
            // optional code for what happens after the alert controller has finished presenting
            }
    }


}

