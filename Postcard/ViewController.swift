//
//  ViewController.swift
//  Postcard
//
//  Created by Kieu Dung on 10/19/14.
//  Copyright (c) 2014 edu.seft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var buttonchange: UIButton!
    @IBOutlet var myView: UIView!
    @IBAction func sendMessage(sender: UIButton) {
        labelMessage.hidden = false;
        //labelMessage.text   = "Hello Worlk";
        
        // add comment here for test
        
        labelMessage.text = enterMessage.text;
        enterMessage.text = "";
        //enterMessage.resignFirstResponder();
        myView.endEditing(true);
        buttonchange.setTitle("button press", forState: UIControlState());
        buttonchange.setTitleColor(UIColor.redColor(), forState: UIControlState());
        buttonchange.backgroundColor = UIColor.blueColor();
        
        
    }
    
    @IBAction func UnHildeNameLabel(sender: UIButton) {
        nameLabel.hidden = false;
    }
    
    @IBAction func updateTextNameLabel(sender: UIButton) {
        nameLabel.text = "my label name is " + enterName.text;
    }
    
    @IBAction func changeColorNameLabel(sender: UIButton) {
        nameLabel.textColor = UIColor.blueColor();
    }
    
    @IBAction func clearTextNameLabel(sender: UIButton) {
        nameLabel.text = "";
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

