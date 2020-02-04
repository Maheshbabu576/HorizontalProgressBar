# Horizontal Progress Bar


A Horizontal progress bar for iOS written in Swift.

# Sample Screen

 ![Alt Text](https://github.com/Maheshbabu576/HorizontalProgressBar/blob/master/Screens/Sample.gif)  ![Alt Text](https://github.com/Maheshbabu576/HorizontalProgressBar/blob/master/Screens/Sample1.gif)  ![Alt Text](https://github.com/Maheshbabu576/HorizontalProgressBar/blob/master/Screens/Sample2.gif)


# usage

Initialization 

    let progressBar = HorizontalProgressbar(frame: CGRect(x: 0, y: (self.navigationController?.navigationBar.frame.size.height)! - 3, width: (self.navigationController?.navigationBar.frame.size.width)!, height: 3))
     
     self.navigationController?.navigationBar.addSubview(progressBar)
 
 To Start Animation 
 
    progressBar.startAnimating()
  
 To Stop Animation 
  
    progressBar.stopAnimating()
   
 # Customization 
   
    progressBar.noOfChunks = 2   // You can provide number of Chunks/Strips appearing over the animation. By default it is 3 
    progressBar.kChunkWdith = 50 // Adjust the width of Chunks/Strips
    progressBar.progressTintColor = UIColor.white  // To change the Chunks color
    progressBar.trackTintColor = UIColor.darkGray  // To change background color of loading indicator
    progressBar.loadingStyle = .indetermine    // Choose loading styles from determine , indetermine , fill
    
    
 # Installation
 
    pod 'HorizontalProgressBar'
    
# Author

  MaheshBabu S, maheshbabu.576@outlook.com

# License

  HorizontalProgressBar is available under the MIT license. See the LICENSE file for more info.
