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
    var charitySelected = 0
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickCharity: UIPickerView!
    @IBOutlet weak var pickGrade: UIPickerView!
    @IBAction func Continue(_ sender: Any) {
        if pickGradeData.count > 0 {
            performSegue(withIdentifier: "segue1", sender: (Any).self)
        }
        
    }
    var sponsor: Sponsor = Sponsor(email: "", name: "", amountDonated: "")
    @IBAction func AddSponsor(_ sender: Any) {
            performSegue(withIdentifier: "sponsorSegue", sender: (Any).self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1" {
            var topicController = segue.destination as! TopicViewController
            if gradeSelected == "11th through 12th"{
                topicController.grade = "eleventhTwelfth"
            } else if gradeSelected == "7th through 8th" {
                topicController.grade = "seventhEighth"
            } else if gradeSelected == "9th through 10th"{
                topicController.grade = "ninthTenth"
            } else {
                topicController.grade = "fifthSixth"
            }
            
            topicController.charity = CharityPool().pool[charitySelected]
        }
    }
    var pickCharityData: [String] = [String]()
    var pickGradeData: [String] = [String]()

    
    let darkGreen = UIColor(red:0.16, green:0.50, blue:0.38, alpha:1.0)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let pools = QuestionPool()
        
        let fifthSixthTopic = Topic(name: "5th/6th grade math", description: "hi", questionPool: pools.fifthSixthQuestionPool)
        let seventhEighthTopic = Topic(name: "7th/8th grade math", description: "Hola", questionPool: pools.seventhEighthQuestionPool)
        let ninthTenthTopic = Topic(name: "9th/10th grade math", description: "A ", questionPool: pools.ninthTenthQuestionPool)
        let eleventhTwelfthTopic = Topic(name: "11th/12th grade math", description: "Hello", questionPool: pools.eleventhTwelfthQuestionPool)
        

        self.pickCharity.delegate = self
        self.pickCharity.dataSource = self
        pickCharity.tag = 1
        pickGrade.tag = 2
        
        // Fill PickCharityData
        let charityPool = CharityPool()
        let charityNames = charityPool.getNames()
        pickCharityData = charityNames
        self.pickGrade.delegate = self
        self.pickGrade.dataSource = self

        pickGradeData = ["5th through 6th", "7th through 8th", "9th through 10th", "11th through 12th"]
        let topics: [Topic] = [ninthTenthTopic]

        game = Game(topics: topics)

        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
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
        case 1: return charitySelected = row
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

