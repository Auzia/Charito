//
//  ViewController.swift
//  Charito
//
//  Created by Amit on 7/27/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import UIKit


// Global vars
var game: Game = Game(topics: [])
    

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var fifthSixth: UIButton!
    @IBOutlet weak var seventhEigth: UIButton!
    @IBOutlet weak var ninthTenth: UIButton!
    @IBOutlet weak var eleventhTwelfth: UIButton!
    let darkGreen = UIColor(red:0.16, green:0.50, blue:0.38, alpha:1.0)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let pools = QuestionPool()
        
        
        let ninthTenthTopic = Topic(name: "9th/10th grade math", description: "Hi", questionPool: pools.ninthTenthQuestionPool)
        
        let topics: [Topic] = [ninthTenthTopic]

        game = Game(topics: topics)
        
        
        
        fifthSixth.backgroundColor = darkGreen
        fifthSixth.layer.cornerRadius = 10
        fifthSixth.layer.borderWidth = 2
        
        seventhEigth.backgroundColor = darkGreen
        seventhEigth.layer.cornerRadius = 10
        seventhEigth.layer.borderWidth = 2
        
        ninthTenth.backgroundColor = darkGreen
        ninthTenth.layer.cornerRadius = 10
        ninthTenth.layer.borderWidth = 2
        
        eleventhTwelfth.backgroundColor = darkGreen
        eleventhTwelfth.layer.cornerRadius = 10
        eleventhTwelfth.layer.borderWidth = 2
        


        //labelMathTest.latex = "(a_1 + a_2)^2 = a_1^2 + 2a_1a_2 + a_2^2"
        //labelMathTest.sizeToFit()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



