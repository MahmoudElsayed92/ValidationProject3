//
//  WelcomeVC.swift
//  VerificationProject
//
//  Created by nour on 29/11/2020.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var UserNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        UserNameLabel.text = userkey
        // Do any additional setup after loading the view.
    }
    let userkey = UserDefaults.standard.value(forKey: "UserKey") as? String ?? ""
    
    

}
