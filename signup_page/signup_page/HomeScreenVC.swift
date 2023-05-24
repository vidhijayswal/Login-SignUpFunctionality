//
//  HomeScreenVC.swift
//  signup_page
//
//  Created by vidhi jayswal on 01/02/19.
//  Copyright © 2019 vidhi jayswal. All rights reserved.
//

import UIKit

class HomeScreenVC: UIViewController {
    
    //-------------------
    //MARK: Outlet
    //-------------------
    
    
    @IBOutlet weak var lblHomescreen: UILabel!
    
    @IBOutlet weak var lblwelcome: UILabel!
    
    
    //-----------------------
    //MARK:Identifier
    //----------------------
    var firstname = String()
    
    
    
    //-----------------------
    //MARK: View Life Cycle
    //-----------------------
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        lblwelcome.text = "welcome " + firstname
        print(lblwelcome)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
