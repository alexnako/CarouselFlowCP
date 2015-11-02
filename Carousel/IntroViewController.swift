//
//  IntroViewController.swift
//  Carousel
//
//  Created by Alex Nako on 10/29/15.
//  Copyright © 2015 Alex Nako. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var tileOne: UIImageView!
    @IBOutlet weak var tileTwo: UIImageView!
    @IBOutlet weak var tileThree: UIImageView!
    @IBOutlet weak var tileFour: UIImageView!
    @IBOutlet weak var tileFive: UIImageView!
    @IBOutlet weak var tileSix: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = imageView.image!.size
        scrollView.delegate = self
        

    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
        
        
        
        //TILE ONE SCROLL
        let tileOneY = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -350, r2Max: 0)
        let tileOneRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -15, r2Max: 0)
        
        if scrollView.contentOffset.y < 568 {
            tileOne.transform = CGAffineTransformConcat(
                CGAffineTransformMakeTranslation(0, tileOneY),
                CGAffineTransformRotate(view.transform, CGFloat(Double(tileOneRotation) * M_PI / 180)))
        } else {
        
            tileOne.transform = CGAffineTransformMakeTranslation(0, tileOneY)
        }
        
        
        //TILE TWO SCROLL
        let tileTwoY = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -340, r2Max: 0)
        let tileTwoRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        if scrollView.contentOffset.y < 568 {
            tileTwo.transform = CGAffineTransformConcat(
                CGAffineTransformMakeTranslation(0, tileTwoY),
                CGAffineTransformRotate(view.transform, CGFloat(Double(tileTwoRotation) * M_PI / 180)))
        } else {
            
            tileTwo.transform = CGAffineTransformMakeTranslation(0, tileTwoY)
        }
        
        //TILE THREE SCROLL
        let tileThreeY = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -380, r2Max: 0)
        let tileThreeRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -12, r2Max: 0)
        
        if scrollView.contentOffset.y < 568 {
            tileThree.transform = CGAffineTransformConcat(
                CGAffineTransformMakeTranslation(0, tileThreeY),
                CGAffineTransformRotate(view.transform, CGFloat(Double(tileThreeRotation) * M_PI / 180)))
        } else {
            
            tileThree.transform = CGAffineTransformMakeTranslation(0, tileThreeY)
        }
        
        //TILE FOUR SCROLL
        let tileFourY = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -440, r2Max: 0)
        let tileFourRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        if scrollView.contentOffset.y < 568 {
            tileFour.transform = CGAffineTransformConcat(
                CGAffineTransformMakeTranslation(0, tileFourY),
                CGAffineTransformRotate(view.transform, CGFloat(Double(tileFourRotation) * M_PI / 180)))
        } else {
            
            tileFour.transform = CGAffineTransformMakeTranslation(0, tileFourY)
        }

        //TILE FIVE SCROLL
        let tileFiveY = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -520, r2Max: 0)
        let tileFiveRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        if scrollView.contentOffset.y < 568 {
            tileFive.transform = CGAffineTransformConcat(
                CGAffineTransformMakeTranslation(0, tileFiveY),
                CGAffineTransformRotate(view.transform, CGFloat(Double(tileFiveRotation) * M_PI / 180)))
        } else {
            
            tileFive.transform = CGAffineTransformMakeTranslation(0, tileFiveY)
        }
        
        //TILE SIX SCROLL
        let tileSixY = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -440, r2Max: 0)
        let tileSixRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 3, r2Max: 0)
        
        if scrollView.contentOffset.y < 568 {
            tileSix.transform = CGAffineTransformConcat(
                CGAffineTransformMakeTranslation(0, tileSixY),
                CGAffineTransformRotate(view.transform, CGFloat(Double(tileSixRotation) * M_PI / 180)))
        } else {
            
            tileSix.transform = CGAffineTransformMakeTranslation(0, tileSixY)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
