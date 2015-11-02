//
//  LoginViewController.swift
//  Carousel
//
//  Created by Alex Nako on 10/29/15.
//  Copyright © 2015 Alex Nako. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    var initialY: CGFloat!
    let offset: CGFloat = -140
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 320, height: 600)


        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

        initialY = buttonParentView.frame.origin.y
         
        scrollView.delegate = self
        scrollView.scrollEnabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
  
    
    // BACK BUTTON
    @IBAction func onButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

    
    // LOGIN VALIDATION
    @IBAction func onLoginButton(sender: AnyObject) {
        if emailField.text == "" || passwordField.text == "" {
            
            // alert container
            let alertController = UIAlertController(title: "Ops", message: "You need to type your email and password first", preferredStyle: .Alert)
            
            // create an OK action
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(cancelAction)
            
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
        } else {
            
            if emailField.text == "email" && passwordField.text == "password" {
                // print("yes")
                activityIndicator.startAnimating()
                delay(2){
                    self.performSegueWithIdentifier("signinSegue", sender: self)
                }
                
            } else if emailField.text != "email" && passwordField.text != "password"  {
               // print("no")
                activityIndicator.startAnimating()
                delay(2){
                    // alert container
                    let alertController = UIAlertController(title: "Ops", message: "Email or password are invalid", preferredStyle: .Alert)
                    
                    // create an OK action
                    let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                        // handle response here.
                    }
                    // add the OK action to the alert controller
                    alertController.addAction(cancelAction)
                    
                    self.presentViewController(alertController, animated: true) {
                        // optional code for what happens after the alert controller has finished presenting
                    self.activityIndicator.stopAnimating()
                    }
                    
                }
            }
            
            

        }
    }
    
    
    
    // LOGIN SCROLL VIEW
    func keyboardWillShow(notification: NSNotification!) {
        
        self.buttonParentView.frame.origin = CGPoint(x: self.buttonParentView.frame.origin.x, y: self.initialY + self.offset)
        
        let maxContentOffsetY = scrollView.contentSize.height - scrollView.frame.size.height
        scrollView.contentOffset.y = maxContentOffsetY
        scrollView.scrollEnabled = true
    }
    func keyboardWillHide(notification: NSNotification!) {
        scrollView.contentOffset.y = 0
        self.buttonParentView.frame.origin = CGPoint(x: self.buttonParentView.frame.origin.x, y: self.initialY)
        scrollView.scrollEnabled = false
    }
    func scrollViewDidScroll(scrollView: UIScrollView) {
        //print(self.scrollView.contentOffset)
        if scrollView.contentOffset.y <= 85.0 {
            view.endEditing(true)
        }
        
    }
    
    
        
}

    
    
    

