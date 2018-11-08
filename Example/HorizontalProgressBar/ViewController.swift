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
        
         let progressBar = HorizontalProgressbar(frame: CGRect(x: 0, y: (self.navigationController?.navigationBar.frame.size.height)! - 2, width: (self.navigationController?.navigationBar.frame.size.width)!, height: 3))
        
        self.navigationController?.navigationBar.addSubview(progressBar)
       
        progressBar.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 20) {
            // your code here
            progressBar.stopAnimating()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

