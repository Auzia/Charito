//
//  CongratsViewController.swift
//  Triviz
//
//  Created by Rohan I on 12/8/17.
//  Copyright © 2017 Auzia. All rights reserved.
//

import UIKit

class CongratsViewController: UIViewController {
    
    var score: Int = 0
    
    @IBOutlet var scoreLabel: UILabel!
   
    
    @IBAction func backToHome(_ sender: Any) {
    self.performSegue(withIdentifier: "HomeSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        scoreLabel.text = "\(score) / 10"
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

