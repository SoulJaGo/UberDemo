//
//  GuidePage.swift
//  UberDemo
//
//  Created by SoulJa on 16/7/18.
//  Copyright © 2016年 SoulJa. All rights reserved.
//

import UIKit
import AVFoundation

class GuidePage: FxBasePage {
    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var backView: UIView!
    
    var player:AVPlayer!
    var playerItem:AVPlayerItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        initPlayVedio()
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
        
        UIView.animateWithDuration(0.7, delay: 5, options: .CurveLinear, animations: {
            self.backView.alpha = 1.0
            self.player.play();
        }) { (complete) in
            
        }
    }
    
    func initPlayVedio()
    {
        self.backView.frame = self.view.bounds
        let path = NSBundle.mainBundle().pathForResource("welcome_video", ofType: "mp4")
        let url = NSURL(fileURLWithPath: path!)
        self.playerItem = AVPlayerItem(URL: url)
        self.player = AVPlayer(URL: url)
        let playerLayer:AVPlayerLayer = AVPlayerLayer(player: self.player)
        playerLayer.frame = self.backView.bounds
        playerLayer.videoGravity =  AVLayerVideoGravityResizeAspectFill
        self.backView.layer.insertSublayer(playerLayer, atIndex: 0)
        self.backView.alpha = 0;
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(GuidePage.playerDidEndTime(_:)), name: "AVPlayerItemDidPlayToEndTimeNotification", object: nil)
    }
    
    func playerDidEndTime(sender: NSNotification) {
        let item = sender.object as! AVPlayerItem
        item.seekToTime(kCMTimeZero)
        self.player.play()
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
