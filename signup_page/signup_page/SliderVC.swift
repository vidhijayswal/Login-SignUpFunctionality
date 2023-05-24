//
//  SliderVC.swift
//  signup_page
//
//  Created by vidhi jayswal on 04/02/19.
//  Copyright © 2019 vidhi jayswal. All rights reserved.
//

import UIKit

class SliderVC: UIViewController
{

    //----------------------
    //MARK: Outlet
    //----------------------
    
    
    @IBOutlet weak var lblPercentage: UILabel!
    
    @IBOutlet weak var progressview: UIProgressView!
    
    @IBOutlet weak var mainview: UIView!
    
    
    //---------------------
    //MARK: Identifier
    //--------------------
    
    var val = Int()
    var value = Float()
    //-----------------------
    //MARK: View Life Cycle
    //-----------------------
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slider(_ sender: UISlider)
    {
        val = Int(sender.value)
        lblPercentage.text = String(val)
    }
    
    @IBAction func stepper(_ sender: UIStepper)
    {
        progressview.progress = Float(sender.value)
    }
    
    
    @IBAction func `switch`(_ sender: UISwitch)
    {
        if sender.isOn == true
        {
            mainview.backgroundColor = UIColor.green
        }
        else
        {
            mainview.backgroundColor = UIColor.red
        }
        sender.onTintColor = UIColor.gray
        sender.tintColor = UIColor.white
    }
    
    
    
    
    
    
}
