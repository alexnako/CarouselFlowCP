//
//  welcomeViewController.swift
//  Carousel
//
//  Created by Alex Nako on 10/30/15.
//  Copyright © 2015 Alex Nako. All rights reserved.
//

import UIKit

class welcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var spinButton: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 1280, height: 320)
        scrollView.delegate = self
        spinButton.alpha = 0.0

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        self.pageControl.currentPage = page
        
        if pageControl.currentPage == 3 {
            pageControl.hidden = true
            UIView.animateWithDuration(0.2, animations: {
                self.spinButton.alpha = 1.0
            })
        } else {
            pageControl.hidden = false
            UIView.animateWithDuration(0.2, animations: {
                self.spinButton.alpha = 0.0
            })
        }
    }

}
