//
//  ViewController1.swift
//  ProjectNew
//
//  Created by Himanshi Rathore on 03/11/23.
//

import UIKit
import AVKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        startAnimation()
    }
    

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    
    @IBOutlet weak var no: UITextField!
    
    
    @IBOutlet weak var add: UITextField!
    
    @IBOutlet weak var id: UITextField!
    
    @IBAction func nextbtn(_ sender: Any) {
        name1 = name.text!
        age1 = age.text!
        no1 = no.text!
        add1 = add.text!
        id1 = id.text!
        performSegue(withIdentifier: "s1", sender: self)
    }
    
    var imgSet:[UIImage] = [UIImage(named: "h1")!,UIImage(named: "h2")!,UIImage(named: "h3")!,UIImage(named: "h4")!,UIImage(named: "h5")!,UIImage(named: "h6")!]
    @IBOutlet weak var hotelImages: UIImageView!
    
    func startAnimation() {
        hotelImages.animationImages = imgSet
        hotelImages.animationDuration = 6;
        hotelImages.animationRepeatCount = 0;
        hotelImages.startAnimating()
    }
    
    var path: String!
    var urlPath:URL!
    var player:AVPlayer!
    var videoController = AVPlayerViewController()
    
    @IBAction func showVideo(_ sender: Any) {
//        TODO: Resolve Video Player
//        path = Bundle.main.path(forResource: "piggy_video", ofType: "mp4")
        path = Bundle.main.path(forResource: "hotel_video", ofType: "mp4")
        urlPath = URL(fileURLWithPath: path)
        player = AVPlayer(url: urlPath)
        videoController.player = player
        present(videoController, animated: true, completion: nil)
        videoController.player?.play()
    }
    
    
}
