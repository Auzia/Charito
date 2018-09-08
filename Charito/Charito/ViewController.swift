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
    

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickCharity: UIPickerView!
    @IBOutlet weak var pickGrade: UIPickerView!
    
    var pickCharityData: [String] = [String]()
    var pickGradeData: [String] = [String]()

    let darkGreen = UIColor(red:0.16, green:0.50, blue:0.38, alpha:1.0)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let pools = QuestionPool()
        
        
        let ninthTenthTopic = Topic(name: "9th/10th grade math", description: "Hi", questionPool: pools.ninthTenthQuestionPool)
        
        let topics: [Topic] = [ninthTenthTopic]
        
        game = Game(topics: topics)


        self.pickCharity.delegate = self
        self.pickCharity.dataSource = self
        pickCharity.tag = 1
        pickCharityData = ["St. Judes", "Capital Area Food Bank"]
        pickGrade.tag = 2
        self.pickGrade.delegate = self
        self.pickGrade.dataSource = self
        pickCharityData = ["5th through 6th", "7th through 8th", "9th through 10th", "11th through 12th"]
        
        
        
      

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



