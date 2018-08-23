//
//  ViewController.swift
//  Charito
//
//  Created by Amit on 7/27/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var fifthSixth: UIButton!
    @IBOutlet weak var seventhEigth: UIButton!
    @IBOutlet weak var ninthTenth: UIButton!
    @IBOutlet weak var eleventhTwelfth: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        fifthSixth.backgroundColor = .gray
        fifthSixth.layer.cornerRadius = 10
        fifthSixth.layer.borderWidth = 2
        
        seventhEigth.backgroundColor = .gray
        seventhEigth.layer.cornerRadius = 10
        seventhEigth.layer.borderWidth = 2
        
        ninthTenth.backgroundColor = .gray
        ninthTenth.layer.cornerRadius = 10
        ninthTenth.layer.borderWidth = 2
        
        eleventhTwelfth.backgroundColor = .gray
        eleventhTwelfth.layer.cornerRadius = 10
        eleventhTwelfth.layer.borderWidth = 2
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

