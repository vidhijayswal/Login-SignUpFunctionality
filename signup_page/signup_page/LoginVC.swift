//
//  LoginVC.swift
//  signup_page
//
//  Created by vidhi jayswal on 04/02/19.
//  Copyright © 2019 vidhi jayswal. All rights reserved.
//

import UIKit

class LoginVC: UIViewController
{
    //-----------------------
    //MARK: Outlets
    //-----------------------
    
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var lblYouarealmostdone: UILabel!
    
    //------------------------
    //MARK: Identifier
    //------------------------
    
    var eml = String()
    var pswd = String()
    var name = String()
    
    //------------------------
    //MARK: View life cycle
    //------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    //------------------------
    //MARK:Button action
    //------------------------
    
    @IBAction func btnLogin(_ sender: Any)
    {
        if txtEmail.text == ""
        {
            let alert = UIAlertController(title: "Error", message: "Email is empty", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            present(alert, animated: true, completion: nil)
        }
        
        if txtPassword.text == ""
        {
            let alert = UIAlertController(title: "ERROR", message: "Please Enter Password", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OKAY", style: .default, handler: nil))
            
            present(alert, animated: true, completion: nil)
            
        }
        print(txtEmail.text!)
        print(eml)
        print(txtPassword.text!)
        print(pswd)
        if txtEmail.text == eml && txtPassword.text == pswd
        {
            let obj = storyboard?.instantiateViewController(withIdentifier: "HomeScreenVC") as! HomeScreenVC
            obj.firstname = name
            
            navigationController?.pushViewController(obj, animated: true)
            
        }
        
    }
    
    @IBAction func btnSign_up(_ sender: Any)
    {
        let signUp = storyboard?.instantiateViewController(withIdentifier: "Sign_upVC") as! Sign_upVC
        //let signUp = storyboard?.instantiateViewController(withIdentifier: "Sign_upVC") as! Sign_upVC
        navigationController?.pushViewController(signUp, animated: true)
    }
    
}
