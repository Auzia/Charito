//
//  ViewController.swift
//  Charito
//
//  Created by Amit on 7/27/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import UIKit
import iosMath

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

        // Do any additional setup after loading the view, typically from a nib.
        let questionPool = [Question(question: "In a 30-60-90 triangle, if the hypotenuse length is 6 inches, how long is the shortest side of the triangle?", arrayOfAnswers: ["2/sqrt3","3","2","2/sqrt2"], correctAnswer: 1), Question(question: "If the circumference of a circle is 30pi, what is its area in terms of pi", arrayOfAnswers: ["15pi","45pi","225pi","900pi"], correctAnswer: 2), Question(question: "Which of the following could be possible side lengths of a right triangle?", arrayOfAnswers: ["5,12,13","4,5,6","7,18,25","7,15,18"],correctAnswer: 0)]
        
        
        let ninthTenthTopic = Topic(name: "9th/10th grade math", description: "Hi", questionPool: questionPool)
        
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



