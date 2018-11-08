//
//  HorizontalProgressbar.swift
//  HorizontalProgressBar
//
//  Created by SWMACDEV-4 on 06/11/18.
//  Copyright © 2018 MaheshBabu. All rights reserved.
//

import UIKit

public class HorizontalProgressbar: UIView {
    
   internal var arrProgressChunks = [UIView]() //To generate dymanic Chunks under progressbar
   public var progressTintColor : UIColor!   //Progressbar Tint color
   public var trackTintColor : UIColor!      //Progressbar track color
          var hideWhenStopped : Bool!
          var isAnimating : Bool!
   public var kChunkWdith = 50.0            //Progressbar Chunk width
   public var noOfChunks = 3                //Number of Chunks to animate
    
   public override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.clipsToBounds = true
        self.trackTintColor = UIColor.darkGray
        self.progressTintColor = UIColor.white
        self.hideWhenStopped = true
        self.isHidden = true
        self.isAnimating = false
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    // Set tint color for track animation
    func trackTintColor (tintColor : UIColor) {
        
        trackTintColor = tintColor
    }
    // Set background color for track
    func progressTintColor (tintColor : UIColor) {
        progressTintColor = tintColor
    }
    // To begin animation
    public func startAnimating() {
        if isAnimating {
            return
        }
        else {
            isAnimating = true
            self.isHidden = false
            
            arrProgressChunks.removeAll()
            for _ in 0..<noOfChunks {
                let chunk = UIView.init(frame: CGRect(x: Double(-kChunkWdith), y: Double(0.0), width: Double(kChunkWdith), height: Double(self.frame.size.height)))
                arrProgressChunks.append(chunk)
            }
            
            var delay:TimeInterval = 0.0
            for chunk in arrProgressChunks {
                chunk.backgroundColor = self.progressTintColor
                self.addSubview(chunk)
                delay = delay + 0.25
                debugPrint(delay)
                self.doChunkAnimation(chunk: chunk, delay: (delay))
                
            }
            
            
            
        }
    }
     // To stop animation
    public func stopAnimating() {
        if !isAnimating {
            return
        }
        else {
            self.isHidden = self.hideWhenStopped
            
            for  view:UIView in arrProgressChunks {
                view.removeFromSuperview()
            }
            self.arrProgressChunks.removeAll()
        }
    }
    
    // Chunk animation logic
    func doChunkAnimation (chunk : UIView , delay: TimeInterval) {
        
        _ =  [UIView .animate(withDuration: 1.00, delay: delay, options: .curveEaseInOut, animations: {
            var chunkFrame = chunk.frame
            chunkFrame.origin.x = self.frame.size.width
            chunk.frame = chunkFrame
        }, completion: { (finished) in
            var chunkFrame = chunk.frame
            chunkFrame.origin.x = CGFloat(-self.kChunkWdith)
            chunk.frame = chunkFrame
            if finished {
                self.doChunkAnimation(chunk: chunk, delay: 0.4)
            }
        })]
    }
    
}
