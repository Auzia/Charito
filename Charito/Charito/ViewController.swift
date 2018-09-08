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
    

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickCharity: UIPickerView!
    @IBOutlet weak var pickGrade: UIPickerView!
    
    var pickCharityData: [String] = [String]()
    var pickGradeData: [String] = [String]()

    let darkGreen = UIColor(red:0.16, green:0.50, blue:0.38, alpha:1.0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let questionPool = [Question(question: "In a 30-60-90 triangle, if the hypotenuse length is 6 inches, how long is the shortest side of the triangle?", arrayOfAnswers: ["2/sqrt3","3","2","2/sqrt2"], correctAnswer: 1), Question(question: "If the circumference of a circle is 30pi, what is its area in terms of pi", arrayOfAnswers: ["15pi","45pi","225pi","900pi"], correctAnswer: 2), Question(question: "Which of the following could be possible side lengths of a right triangle?", arrayOfAnswers: ["5,12,13","4,5,6","7,18,25","7,15,18"],correctAnswer: 0)]
        
        
        let ninthTenthTopic = Topic(name: "9th/10th grade math", description: "Hi", questionPool: questionPool)
        self.pickCharity.delegate = self
        self.pickCharity.dataSource = self
        pickCharity.tag = 1
        pickCharityData = ["St. Judes", "Capital Area Food Bank"]
        pickGrade.tag = 2
        self.pickGrade.delegate = self
        self.pickGrade.dataSource = self
        pickCharityData = ["5th through 6th", "7th through 8th", "9th through 10th", "11th through 12th"]
        let topics: [Topic] = [ninthTenthTopic]

        game = Game(topics: topics)
        
        
        
      

        //labelMathTest.latex = "(a_1 + a_2)^2 = a_1^2 + 2a_1a_2 + a_2^2"
        //labelMathTest.sizeToFit()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView.tag == 1){
            return pickCharityData.count
        }else if (pickerView.tag == 2){
            return pickGradeData.count
        } else {
            return 1
        }
    }
    
    func pickerView(_ pickerView:UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView.tag == 1){
            return pickCharityData[row]
            
        }else if (pickerView.tag == 2){
            return pickGradeData[row]
        } else {
            return "YAYYAYA"
            
        }
    }
   

}



