//
//  ViewController.swift
//  Charito
//
//  Created by Amit on 7/27/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import UIKit

class TopicTableViewController: UITableViewController {

    var topics: [Topic] = []

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let questionOne = Question(question: "5+6=?", arrayOfAnswers: ["10", "11", "12", "13"] , correctAnswer: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

}
