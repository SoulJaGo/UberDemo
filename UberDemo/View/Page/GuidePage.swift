//
//  GuidePage.swift
//  UberDemo
//
//  Created by SoulJa on 16/7/18.
//  Copyright © 2016年 SoulJa. All rights reserved.
//

import UIKit

class GuidePage: FxBasePage {
    @IBOutlet weak var backImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        doAnimation()
    }
    
    func doAnimation()
    {
        var images:[UIImage] = []
        var imageName:String = ""
        var image:UIImage = UIImage()
        for index in 0...67 {
            imageName = "logo-" + String(format: "%03d", index)
            image = UIImage(named: imageName)!
            images.insert(image, atIndex: index)
        }
        backImageView?.animationImages = images
        backImageView?.animationRepeatCount = 1
        backImageView?.animationDuration = 5
        backImageView?.startAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
