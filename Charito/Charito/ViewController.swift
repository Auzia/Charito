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
    var gradeSelected = ""
    var charitySelected = ""
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickCharity: UIPickerView!
    @IBOutlet weak var pickGrade: UIPickerView!
    @IBAction func Continue(_ sender: Any) {
        if pickGradeData != nil{
            performSegue(withIdentifier: "segue1", sender: (Any).self)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1" {
        var topicController = segue.destination as! TopicViewController
        if gradeSelected == "5th through 6th"{
            topicController.grade = "fifthSixth"
        } else if gradeSelected == "7th through 8th" {
            topicController.grade = "seventhEighth"
        } else if gradeSelected == "9th through 10th"{
            topicController.grade = "ninthTenth"
        } else {
            topicController.grade = "eleventhTwelfth"
        }
        //REPLACE LAST WITH ACTUAL 11TH 12TH CLASS AND ADD ELSE ALERT OF NOTHING CHOSEN
        }
    }
    var pickCharityData: [String] = [String]()
    var pickGradeData: [String] = [String]()

    let darkGreen = UIColor(red:0.16, green:0.50, blue:0.38, alpha:1.0)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let pools = QuestionPool()
        
        let ninthTenthTopic = Topic(name: "9th/10th grade math", description: "Hi", questionPool: pools.ninthTenthQuestionPool)

        
        self.pickCharity.delegate = self
        self.pickCharity.dataSource = self
        pickCharity.tag = 1
        pickGrade.tag = 2
        pickCharityData = ["St. Judes", "Capital Area Food Bank"]
        self.pickGrade.delegate = self
        self.pickGrade.dataSource = self

        pickGradeData = ["5th through 6th", "7th through 8th", "9th through 10th", "11th through 12th"]
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
        switch(pickerView.tag) {
        case 1: return pickCharityData.count
        case 2: return pickGradeData.count
        default: return 0
        }
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent  component: Int) {
        switch(pickerView.tag){
        case 1: return charitySelected = pickCharityData[row] as String
        case 2: return gradeSelected = pickGradeData[row] as String
            print(gradeSelected)
        default: return ()
        }
    }
    
    
    internal func pickerView(_ pickerView:UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch(pickerView.tag) {
        case 1: return pickCharityData[row]
        case 2: return pickGradeData[row]
        default: return nil
        }
    }

}

