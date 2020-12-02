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
        let userName = userNameTxt.text
        let thePassword = PassWordTxt.text
        let theEmail = emailTxt.text
        let thephoneNumber = phoneNumberTxt.text
    
        UserDefaults.standard.set(userNameTxt.text, forKey: "UserKey")
        UserDefaults.standard.set(emailTxt.text, forKey: "EmailKey")
        UserDefaults.standard.set(PassWordTxt.text, forKey: "PasswordKey")
        if userName?.isEmpty == true || thePassword?.isEmpty == true || theEmail?.isEmpty == true || thephoneNumber?.isEmpty == true  {
            let alert = UIAlertController(title: "Attention", message: "please fill all fields", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style:.cancel, handler: nil)
            alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
            
            
            
            
        }else{

        self.performSegue(withIdentifier: "LoginVC", sender: self)
        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationVC = segue.destination as!LoginVC
//    }
}
