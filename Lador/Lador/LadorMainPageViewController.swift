//
//  LadorMainPageViewController.swift
//  Lador
//
//  Created by Developer on 12/29/17.
//  Copyright © 2017 Development. All rights reserved.
//

import UIKit

class LadorMainPageViewController: UIViewController {
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(LadorMainPageViewController.imageTapped(gesture:)))
        
        // add it to the image view;
        backgroundImage.addGestureRecognizer(tapGesture)
        // make sure imageView can be interacted with by user
        backgroundImage.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @objc func imageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            self.performSegue(withIdentifier: "segueToMenu", sender: self)

        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
