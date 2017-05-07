//
//  ViewController.swift
//  ShoppingJack
//
//  Created by ༼☠͙ JåćK ✩ Ħᴓᴓ ☠͙༽ on 5/3/17.
//  Copyright © 2017 ༼☠͙ JåćK ✩ Ħᴓᴓ ☠͙༽. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    var currentIndex = 0
    var customView:UIImageView!
    var timer:Timer!
    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var phone: UIButton!
    @IBOutlet weak var accessories: UIButton!
    @IBOutlet weak var imgLogo2: UIImageView!
    @IBOutlet weak var imgLogo: UIImageView!
    
    var player: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBackground.backgroundColor = UIColor.green.withAlphaComponent(0.5)
        viewBackground.layer.cornerRadius = 10
      
        phone.layer.cornerRadius = 7
        phone.layer.borderWidth = 2
        phone.layer.borderColor = UIColor.red.cgColor
        phone.layer.cornerRadius = phone.frame.size.width / 2
        
        accessories.layer.cornerRadius = 7
        accessories.layer.borderWidth = 2
        accessories.layer.borderColor = UIColor.red.cgColor
        accessories.layer.cornerRadius = phone.frame.size.width / 2
        
        
        let path = Bundle.main.path(forResource: "Intro background star", ofType: "mp4")
        player = AVPlayer(url: NSURL(fileURLWithPath: path!) as URL)
        player!.actionAtItemEnd = AVPlayerActionAtItemEnd.none;
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.frame
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        self.view.layer.insertSublayer(playerLayer, at: 0)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.playerItemDidReachEnd), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player!.currentItem)
        player!.seek(to: kCMTimeZero)
        player!.play()
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        self.phone.layer.transform = CATransform3DMakeScale(1, 1, 1)
        self.accessories.layer.transform = CATransform3DMakeScale(1, 1, 1)
        phone.center.x -= self.view.bounds.width + phone.layer.frame.width
        accessories.center.x -= self.view.bounds.width + accessories.layer.frame.width
        UIView.animate(withDuration: 0.08, delay: 0, options: [.curveEaseInOut], animations:
            {
                self.phone.center.x += self.view.bounds.width + self.phone.layer.frame.width + 50
        }, completion:
            { (true) in
                UIView.animate(withDuration: 0.5, delay: 0.0,
                               usingSpringWithDamping: 0.25,
                               initialSpringVelocity: 0.0,
                               options: [], animations:
                    {
                        self.phone.center.x -= 50
                }, completion: { (true) in
                    UIView.animate(withDuration: 0.08, delay: 0, options: [.curveEaseInOut], animations:
                        {
                            self.accessories.center.x += self.view.bounds.width + self.accessories.layer.frame.width + 50
                    }, completion:
                        { (true) in
                            UIView.animate(withDuration: 0.5, delay: 0.0,
                                           usingSpringWithDamping: 0.25,
                                           initialSpringVelocity: 0.0,
                                           options: [], animations:
                                {
                                    self.accessories.center.x -= 50
                            }, completion:
                                { (true) in
                                    UIView.transition(with: self.imgLogo, duration: 0.8, options: [UIViewAnimationOptions.transitionFlipFromBottom, .autoreverse], animations: {
                                        UIView.setAnimationRepeatCount(.infinity)
                                        UIView.transition(with: self.imgLogo2, duration: 0.8, options: [UIViewAnimationOptions.transitionFlipFromBottom, .autoreverse], animations: {
                                            UIView.setAnimationRepeatCount(.infinity)
                                        }) {(true) in
                                        }
                                    })
                            })
                    })
                })
        })
    }
    func playerItemDidReachEnd() {
        player!.seek(to: kCMTimeZero)
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
extension UIViewController {
    class ViewController2: UIViewController {
    }
}
