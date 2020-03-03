//
//  SecondViewController.swift
//  AlertController
//
//  Created by MacStudent on 2020-03-02.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var ingCircus: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        ingCircus.image = UIImage(named : "lion.png")
        ingCircus.image = #imageLiteral(resourceName: "home.png")
        
        ingCircus.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        // Do any additional setup after loading the view.
    }
  
    @IBAction func segmentImageChange(_ sender: UISegmentedControl)
    {
        displayImage(index: sender.selectedSegmentIndex)
    }
    
    
    @IBAction func slideImageChange(_ sender: UISlider)
    {
       
        let n  = Int(sender.value)
            displayImage(index : n)
        }
        private func displayImage(index : Int)
        { var imageName = String()
           switch index
           {
           case 0:
               imageName = "lion"
           case 1:
               imageName = "elephant"
           case 2:
               imageName = "gorilla"
           case 3:
               imageName = "home"
           case 4:
               imageName = "ice cream"
           default:
               print("No image selected")
                   
           }
           self.ingCircus.image = UIImage(named : imageName)
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


