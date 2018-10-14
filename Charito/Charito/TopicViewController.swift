//
//  TopicViewController.swift
//  Charito
//
//  Created by Kushan Weerakoon on 9/16/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import Foundation
import UIKit

class TopicViewController: UIViewController{
    @IBOutlet weak var topicName: UILabel!
    @IBOutlet weak var topicDescription: UILabel!
    @IBOutlet weak var topicExamples: UILabel!
    @IBOutlet weak var charityName: UILabel!
    @IBOutlet weak var charityDescription: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func Start(_ sender: Any) {
        performSegue(withIdentifier: "segue2", sender: (Any).self)
    }
    var grade = ""
    var topic: Topic = Topic()
    var charity: Charity = Charity()
    var qPool = QuestionPool()
    var sponsor: Sponsor = Sponsor(email: "", name: "", amountDonated: "")
   

    override func viewDidLoad() {
        print(sponsor.name)
        if grade == "fifthSixth"{
            topic = Topic(name: "5th and 6th Grade", description: "You will see basic \n arithmetic on this section", questionPool: qPool.fifthSixthQuestionPool, image: "fivesix")
            
        } else if grade == "seventhEighth"{
            topic = Topic(name: "7th and 8th Grade", description: "You will see basic \n arithmetic on this section along \n with some basic algebra\n and geometry", questionPool: qPool.seventhEighthQuestionPool, image: "seveneight")
            
        } else if grade == "ninthTenth"{
            topic = Topic(name: "9th and 10th Grade", description: "You will see algebra\n and geometry on this\n section that is moderately complex.\n You will also see some \nbasic trigonometry.", questionPool: qPool.ninthTenthQuestionPool, image: "nineten")
            
        } else if grade == "eleventhTwelfth"{
            topic = Topic(name: "11th and 12th Grade", description: "You will see some\n trigonometry and other standard\n questions for precalculus and\n calculus students.", questionPool: qPool.eleventhTwelfthQuestionPool, image: "eleventwelve")
            
        }
        
        topicName.text = topic.name
        topicDescription.text = "Topics :" //CHANGE THIS LATER
        topicExamples.text = topic.description
        charityName.text = "You decided to donate to: " + charity.name
        charityDescription.text = charity.description
        imageView.image = UIImage(named: topic.image)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue2" {
            let questionController = segue.destination as! QuestionViewController
            questionController.topic1 = topic
            questionController.pool = topic.questionPool
            questionController.sponsor = sponsor
        }
    }
}



