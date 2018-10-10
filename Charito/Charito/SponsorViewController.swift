//
//  SponsorViewController.swift
//  
//
//  Created by Kushan Weerakoon on 10/4/18.
//

import Foundation
import UIKit

class SponsorViewController: UIViewController{
    @IBOutlet weak var SEmail: UITextField!
    @IBOutlet weak var SName: UITextField!
    @IBOutlet weak var SMoney: UITextField!
    @IBAction func LoadSponsor(_ sender: Any) {
        var sponsor = Sponsor(email: SEmail.text!, name: SName.text!, amountDonated: SMoney.text!)
        performSegue(withIdentifier: "sponsorAdded", sender: (Any).self)
        print(sponsor.name)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sponsorAdded" {
            var mainController = segue.destination as! ViewController
            mainController.sponsor = Sponsor(email: SEmail.text!, name: SName.text!, amountDonated: SMoney.text!)
            
        }
    }
    
}
