//
//  HomeScreenViewController.swift
//  OnlineShop
//
//  Created by petersoeun on 9/27/17.
//  Copyright © 2017 RoboCam. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    var timer : Timer!
    var updateCounter : Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCounter = 0
        timer = Timer.scheduledTimer(timeInterval:  2.0, target: self, selector: #selector(HomeScreenViewController.updateTimer), userInfo: nil, repeats: true)
        

    }
    internal func updateTimer(){
        if(updateCounter<=3){
            pageControl.currentPage = updateCounter
            imgView.image = UIImage(named: String(updateCounter+1) + ".png")
            updateCounter = updateCounter + 1
        }
        else{
            updateCounter = 0
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
