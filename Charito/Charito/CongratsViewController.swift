//
//  CongratsViewController.swift
//  Triviz
//
//  Created by Rohan I on 12/8/17.
//  Copyright © 2017 Auzia. All rights reserved.
//

import UIKit
import Foundation
import MessageUI


class CongratsViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    var score: Int = 0
    
    @IBOutlet var scoreLabel: UILabel!

  
    @IBAction func sendEmail(_ sender: Any) {
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail(){
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else{
            showMailError()
        }
    }
    func configureMailController() -> MFMailComposeViewController{
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        
        mailComposerVC.setToRecipients(["amit.krishnaiyer@gmail.com"])
        mailComposerVC.setSubject("Hey")
        mailComposerVC.setMessageBody("How are you?", isHTML: false)
        
        return mailComposerVC
    }
    func showMailError(){
        let sendMailErrorAlert = UIAlertController(title: "Could not send email", message: "Your device could not send email", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "ok", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
  
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "HomeSegue", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        scoreLabel.text = "\(score) / 3"
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

