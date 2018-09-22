//
//  QuestionViewController.swift
//  Triviz
//
//  Created by Lakshman Krishnaiyer on 12/3/17.
//  Copyright © 2017 Purple Potatoes. All rights reserved.
//

import UIKit
import iosMath

class QuestionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var topic: Topic = Topic()
    
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: MTMathUILabel!
    @IBOutlet weak var answerChoice1: MTMathUILabel!
    @IBOutlet weak var answerChoice2: MTMathUILabel!
    @IBOutlet weak var answerChoice3: MTMathUILabel!
    @IBOutlet weak var answerChoice4: MTMathUILabel!
    @IBOutlet weak var answerPicker: UIPickerView!
    
    var answerPickerData: [String] = [String]()
    
    
    var answeredQs: [Int] = []
    var correctAnswers: Int = 0
    var total: Int = 10
    var question: Question = Question(question: "", arrayOfAnswers: [],  correctAnswer: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        showNewQuestion()
    }

    func showNewQuestion() {
        //Check if we've hit the total
        if (answeredQs.count == total) {
            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CongratsVC") as? CongratsViewController
            {
                vc.score = self.correctAnswers
                self.present(vc, animated: true, completion: nil)
            }
            return
        }
        //setting up the picker view
        self.answerPicker.delegate = self as? UIPickerViewDelegate
        self.answerPicker.dataSource = self as? UIPickerViewDataSource
        answerPickerData = ["A", "B", "C", "D"]
        
        // Do any additional setup after loading the view.
        topicLabel.text = topic.name
        scoreLabel.text = "\(correctAnswers) / \(answeredQs.count)"
        
        // Pick a question
        var questionIndex =  Int(arc4random_uniform(UInt32(topic.questionPool.count)))
        
        
        //Make sure the question is new
        while (answeredQs.contains(questionIndex)) {
            //Look for a new question
            questionIndex = Int(arc4random_uniform(UInt32(topic.questionPool.count)))
        }
        
        // To test a specific question, uncomment the following line
        questionIndex = 0  // Fill in the index of the question you want to test
        
        let pools = QuestionPool()
        let pool = pools.seventhEighthQuestionPool
        
        //Make sure you track all asked questions
        answeredQs.append(questionIndex)
        print("questionIndex = \(String(questionIndex))")
        question = pool[questionIndex]
        questionLabel.latex = question.question // latex
        
        answerChoice1.latex = question.arrayOfAnswers[0]
        answerChoice2.latex = question.arrayOfAnswers[1]
        answerChoice3.latex = question.arrayOfAnswers[2]
        answerChoice4.latex = question.arrayOfAnswers[3]
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func checkAnswer(answerClicked: String) {
        let correctAnswerString = question.arrayOfAnswers[question.correctAnswer]
        
      
        let okayAction = UIAlertAction(title: "Okay", style: .default) {
            (action) in
            self.showNewQuestion()
        }
        if(correctAnswerString == answerClicked) {
            // Correct - Show box
            let alert = UIAlertController(title: "Correct Answer :-D", message: "Way to go!", preferredStyle: .alert)
            alert.addAction(okayAction)

            self.present(alert, animated: true, completion: nil)
            correctAnswers = correctAnswers + 1
        }
        else {
            // Incorrect Answer - Show Box
            let alert = UIAlertController(title: "Incorrect Answer", message: "Better luck next time", preferredStyle: .alert)
            alert.addAction(okayAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return answerPickerData.count
    }
    
    
    internal func pickerView(_ pickerView:UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return answerPickerData[row]
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
