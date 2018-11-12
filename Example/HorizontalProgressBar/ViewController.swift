//
//  ViewController.swift
//  HorizontalProgressBar
//
//  Created by MaheshBabu on 11/08/2018.
//  Copyright (c) 2018 MaheshBabu. All rights reserved.
//

import UIKit
import HorizontalProgressBar
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
         let progressBar = HorizontalProgressbar(frame: CGRect(x: 0, y: (self.navigationController?.navigationBar.frame.size.height)! - 3, width: (self.navigationController?.navigationBar.frame.size.width)!, height: 3))
       
        self.navigationController?.navigationBar.addSubview(progressBar)
      
        progressBar.noOfChunks = 2
        progressBar.kChunkWdith = 40
        progressBar.progressTintColor = UIColor.white
        progressBar.trackTintColor = UIColor.darkGray
        progressBar.loadingStyle = .determine
        
        progressBar.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 30) {
            // your code here
            progressBar.stopAnimating()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

