//
//  SignInViewController.swift
//  pdm
//
//  Created by Hamza Iqbal on 02/10/2020.
//

import UIKit
import Alamofire
import SVProgressHUD

class SignInViewController: UIViewController, UIGestureRecognizerDelegate {
    @IBOutlet weak var signupButtonOutlet: UIButton!
    @IBOutlet weak var loginSignUpStackView: UIStackView!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var forgotUserNameOutlet: UIButton!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var continueBtnOutlet: UIButton!
    @IBOutlet weak var continueWithFbOutlet: UIButton!
    @IBOutlet weak var continueWithGoogleOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.customization()
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
    func customization() {
        loginSignUpStackView.layer.cornerRadius = 0.5 * loginSignUpStackView.bounds.size.height
        loginSignUpStackView.clipsToBounds = true
        signupButtonOutlet.layer.cornerRadius = 0.5 * signupButtonOutlet.bounds.size.height
        signupButtonOutlet.clipsToBounds = true
        loginButtonOutlet.layer.cornerRadius = 0.5 * loginButtonOutlet.bounds.size.height
        loginButtonOutlet.clipsToBounds = true
        loginButtonOutlet.backgroundColor = UIColor.orange
        signupButtonOutlet.backgroundColor = UIColor.clear
        
        continueBtnOutlet.layer.cornerRadius = 0.2 * continueBtnOutlet.bounds.size.height
//        continueBtnOutlet.clipsToBounds = true
        
        continueBtnOutlet.layer.borderColor = UIColor.white.cgColor
        continueBtnOutlet.layer.shadowOpacity = 1
        continueBtnOutlet.layer.shadowRadius = 3.0
        continueBtnOutlet.layer.shadowOffset = CGSize.zero // Use any CGSize
        continueBtnOutlet.layer.shadowColor = UIColor.lightGray.cgColor
        
        continueWithFbOutlet.layer.cornerRadius = 0.2 * continueWithFbOutlet.bounds.size.height
        continueWithFbOutlet.clipsToBounds = true
        continueWithFbOutlet.layer.borderWidth = 1
        continueWithFbOutlet.layer.borderColor = UIColor.orange.cgColor
        continueWithGoogleOutlet.layer.cornerRadius = 0.2 * continueWithGoogleOutlet.bounds.size.height
        continueWithGoogleOutlet.clipsToBounds = true
        continueWithGoogleOutlet.layer.borderWidth = 1
        continueWithGoogleOutlet.layer.borderColor = UIColor.orange.cgColor
        
        userNameTF.attributedTextField()
        passwordTF.attributedTextField()
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        if(loginButtonOutlet.backgroundColor == UIColor.orange) {
            signupButtonOutlet.backgroundColor = UIColor.clear
        } else {
            loginButtonOutlet.backgroundColor = UIColor.orange
            signupButtonOutlet.backgroundColor = UIColor.clear
        }
    }
    @IBAction func signupButtonTapped(_ sender: Any) {
        if(signupButtonOutlet.backgroundColor == UIColor.orange) {
            loginButtonOutlet.backgroundColor = UIColor.clear
        } else {
            signupButtonOutlet.backgroundColor = UIColor.orange
            loginButtonOutlet.backgroundColor = UIColor.clear
        }
        
    }
    @IBAction func forgotUserName(_ sender: Any) {
        let vctwo = storyboard?.instantiateViewController(withIdentifier: "forgotNameVC") as? ForgetNameViewController;
        self.navigationController?.pushViewController(vctwo!, animated: true)
    }
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        let vctwo = storyboard?.instantiateViewController(withIdentifier: "forgotPasswordVC") as? ForgetPasswordViewController;
        self.navigationController?.pushViewController(vctwo!, animated: true)
    }
    
    @IBAction func continueButtonTapped(_ sender: Any) {
        
            let userName = userNameTF.text
            let password = passwordTF.text
//        let dict : [String:Any] = ["username": userNameTF.text!, "password": passwordTF.text!, "is_email" : "2"]
//        if self.messageTF.text == kEmpty || self.passTF.text == kEmpty {
//            let alert = UIAlertController(title: kEmpty, message: kFillAllFields, preferredStyle: UIAlertControllerStyle.alert)
//            alert.addAction(UIAlertAction(title: kOk, style: UIAlertActionStyle.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//        } else {
//            let userName = self.messageTF.text
//            let password = self.passTF.text
//            NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
//            NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
//            if isValidEmail(testStr: userName!) == true {
//                //activityIndicator.startAnimating()
//                Utilities.HelperFuntions.delegate.showProgessBar(self.view)
                WebManager.getInstance(delegate: self)?.signInWithEmail(email: userName!, pass      : password!)
//            } else {
//                let alert = UIAlertController(title: kEmpty, message: kValidEmail, preferredStyle: UIAlertControllerStyle.alert)
//                alert.addAction(UIAlertAction(title: kOk, style: UIAlertActionStyle.default, handler: nil))
//                self.present(alert, animated: true, completion: nil)
//            }
//        }
        
//        Api_withParameters(aDictParam: dict)
    }
    @IBAction func continueWithFBTapped(_ sender: Any) {
        let vcone = storyboard?.instantiateViewController(withIdentifier: "tabbar") as? UITabBarController;
        self.navigationController?.pushViewController(vcone!, animated: true)
    }
    @IBAction func continueWithGoogleTapped(_ sender: Any) {
        let vcone = storyboard?.instantiateViewController(withIdentifier: "tabbar") as? UITabBarController;
        self.navigationController?.pushViewController(vcone!, animated: true)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
extension SignInViewController: WebManagerDelegate {
    func failureResponse(response: AFDataResponse<Any>) {
     //   activityIndicator.stopAnimating()
//        Utilities.HelperFuntions.delegate.hideProgressBar(self.view)
        Utility.showAlertWithSingleOption(controller: self, title: kEmpty, message: kCannotConnect, preferredStyle: .alert, buttonText: kok, buttonHandler: nil)
    }
    
    func networkFailureAction() {
//        Utility.stopSpinner(activityIndicator: activityIndicator)
//        activityIndicator.stopAnimating()
//        Utilities.HelperFuntions.delegate.hideProgressBar(self.view)

        let alert = UIAlertController(title: kEmpty, message: kInternetError, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: kOk, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        return
    }
    
    func successResponse(response: AFDataResponse<Any> ,webManager: WebManager) {
        
        switch(response.result) {
        case .success(let JSON):
            //SVProgressHUD.dismiss()
            let result = JSON as! NSDictionary
            let successresponse = result.object(forKey: "success")!
            if(successresponse as! Bool == false) {
                let alert = UIAlertController(title: "Error", message: (result.object(forKey: "message")! as! String), preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            } else {
                let result = result.object(forKey: "user")! as! NSDictionary
                let user = User.getInstance()
                user?.setUserData(data: result)
                let vcone = self.storyboard?.instantiateViewController(withIdentifier: "tabbar") as? UITabBarController;
                self.navigationController?.pushViewController(vcone!, animated: true)
            }
            
            break
        case .failure(_):
            //SVProgressHUD.dismiss()
            let alert = UIAlertController(title: "Error", message: "Please enter correct username and password.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            break
        }
    }
}




extension UITextField {
    func attributedTextField() {
        self.borderStyle = .none
        self.backgroundColor = UIColor.systemBackground
        self.layer.cornerRadius = self.frame.size.height / 2
        self.layer.cornerRadius = 0.2 * self.bounds.size.height
        self.layer.borderWidth = 0.25
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 3.0
        self.layer.shadowOffset = CGSize.zero // Use any CGSize
        self.layer.shadowColor = UIColor.lightGray.cgColor
        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = UITextField.ViewMode.always
    }
}
