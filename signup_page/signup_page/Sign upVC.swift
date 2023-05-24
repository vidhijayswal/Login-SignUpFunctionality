//
//  Sign upVC.swift
//  signup_page
//
//  Created by vidhi jayswal on 04/02/19.
//  Copyright © 2019 vidhi jayswal. All rights reserved.
//

import UIKit

class Sign_upVC: UIViewController
{
    //----------------------
    //MARK: OUTLETS
    //----------------------
    
    @IBOutlet weak var txtFirstnam: UITextField!
    @IBOutlet weak var txtLastname: UITextField!
    @IBOutlet weak var txtEmailaddress: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmedpassword: UITextField!

    
    
    //----------------------
    //MARK: VIEW LIFE CYCLE
    //----------------------
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //--------------------
    //MARK: BUTTON ACTION
    //--------------------
    
    @IBAction func btnSignup(_ sender: Any)
    {
        if txtFirstnam.text == ""
        {
            let alert = UIAlertController(title: "Error", message: "Full name is empty", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            present(alert,animated: true, completion: nil)
        }
        
        if txtLastname.text == ""
        {
            let alert = UIAlertController(title: "Error", message: "Last name is empty", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            present(alert, animated: true, completion: nil)
            
        }
        
        if txtEmailaddress.text == ""
        {
            let alert = UIAlertController(title: "Error", message: "Email address is empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            present(alert, animated: true, completion: nil)
            
        }
        
        if txtPassword.text == ""
        {
            let alert = UIAlertController(title: "Error", message: "Password is not given", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            present(alert, animated: true,completion: nil)
        }
        
        if txtConfirmedpassword.text == ""
        {
            let alert = UIAlertController(title: "Error", message: "Confirmed Password is not given", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            present(alert, animated: true,completion: nil)
        }
        
        if txtConfirmedpassword.text == txtPassword.text
        {
            let login = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
            
            login.eml = txtEmailaddress.text!
            login.pswd = txtPassword.text!
            login.name = txtFirstnam.text!
            
            navigationController?.pushViewController(login, animated: true)
            
        }
        
        
    }
    
    
    @IBAction func btnBack(_ sender: Any)
    {
        let login = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        
        navigationController?.pushViewController(login, animated: true)
    }
    
}
