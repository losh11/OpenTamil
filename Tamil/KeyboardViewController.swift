//
//  KeyboardViewController.swift
//  Tamil
//
//  Created by Loshan on 29/05/2015.
//  Copyright (c) 2015 Loshan Industries. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    // Declaration of layers
    
    @IBOutlet weak var frontRowOne: UIView!
    @IBOutlet weak var frontRowTwo: UIView!
    @IBOutlet weak var frontRowThree: UIView!
    @IBOutlet weak var frontRowFour: UIView!
    @IBOutlet weak var backRowOne: UIView!
    @IBOutlet weak var backRowTwo: UIView!
    @IBOutlet weak var backRowThree: UIView!
    @IBOutlet weak var backRowFour: UIView!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var keyboard = UINib(nibName: "testKeyboard", bundle: nil)
        var subset = keyboard.instantiateWithOwner(self, options: nil)
        view = subset[0] as! UIView;
        
        // Default layering configuration
        
        frontRowOne.hidden = false
        frontRowTwo.hidden = false
        frontRowThree.hidden = false
        frontRowFour.hidden = false
        backRowOne.hidden = true
        backRowTwo.hidden = true
        backRowThree.hidden = true
        backRowFour.hidden = true
    }
    
    @IBAction func didTapButton(sender: AnyObject) {
        frontRowOne.hidden = true
        frontRowTwo.hidden = true
        frontRowThree.hidden = true
        frontRowFour.hidden = true
        backRowOne.hidden = false
        backRowTwo.hidden = false
        backRowThree.hidden = false
        backRowFour.hidden = false
    }
    
    // Logic programme
    
    @IBAction func logicSelectedOne(sender: AnyObject) {
        
    }
    
    @IBAction func didTapButtonWithValue(sender: AnyObject) {
        let button = sender.titleLabel!!.text
        let title = button as String!
        var proxy = textDocumentProxy as! UITextDocumentProxy
        
        switch title {
        case "⇤" :
            proxy.deleteBackward()
        case "return" :
            proxy.insertText("\n")
        case "space" :
            proxy.insertText(" ")
        default :
            proxy.insertText(title)
        }
    }
    
    @IBAction func didChangeKeyboard(sender: AnyObject) {
        advanceToNextInputMode()
    }
    
}

