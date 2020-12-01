//
//  LoginVC.swift
//  VerificationProject
//
//  Created by nour on 29/11/2020.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var userPassWordTxt: UITextField!
    @IBOutlet weak var userEmailTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func alertMethod(alertTitle:String,alertMessage: String)  {
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let alertAction = UIAlertAction.init(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
   
    
    let emailKey = UserDefaults.standard.value(forKey: "EmailKey") as? String ?? "Error from Email"
    let passwordKey = UserDefaults.standard.value(forKey: "PasswordKey") as? String ?? "Error from Password"

    
    @IBAction func LoginBu(_ sender: UIButton) {
        if userEmailTxt.text != emailKey
            {
            alertMethod(alertTitle: "Hey", alertMessage: "The Email is Wrong")
        }else if userPassWordTxt.text != passwordKey {
            alertMethod(alertTitle: "Hey", alertMessage: "The password is Wrong")
        }
         else{
                self.performSegue(withIdentifier: "WelcomeVC", sender: self)
            }
        }
//func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationVC = segue.destination as! WelcomeVC
//    }
//
}
