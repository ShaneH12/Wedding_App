//
//  ViewController.swift
//  Wedding App
//
//  Created by Holbein, Shane M. on 6/2/18.
//  Copyright © 2018 Holbein, Shane M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Random_Pic : Int = 0
    
        let Pic_Array = ["wed1", "wed2", "wed3", "wed4", "wed5", "wed6", "wed7", "wed8", "wed9", "wed10", "wed11", "wed12", "wed13", "wed14", "wed15", "wed16", "wed17", "wed18", "wed19", "wed20"]
    
    @IBOutlet weak var Random_Pics: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        Update_Wed_Image()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Pic_Button(_ sender: UIButton) {
        
        Update_Wed_Image()
        
    }
    
    func Update_Wed_Image() {
        
        Random_Pic = Int(arc4random_uniform(20))
        
        Random_Pics.image = UIImage(named: Pic_Array[Random_Pic])
        
    }
    
}

