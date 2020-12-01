//
//  ViewController.swift
//  VerificationProject
//
//  Created by nour on 29/11/2020.
//

import UIKit

class RegisterVC: UIViewController {
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var phoneNumberTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var PassWordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func RegisterBu(_ sender: UIButton) {
        
        UserDefaults.standard.set(userNameTxt.text, forKey: "UserKey")
        UserDefaults.standard.set(emailTxt.text, forKey: "EmailKey")
        UserDefaults.standard.set(PassWordTxt.text, forKey: "PasswordKey")
      

        self.performSegue(withIdentifier: "LoginVC", sender: self)
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationVC = segue.destination as!LoginVC
//    }
}

