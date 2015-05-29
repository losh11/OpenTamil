//
//  KeyboardViewController.swift
//  Tamil
//
//  Created by Loshan on 29/05/2015.
//  Copyright (c) 2015 Loshan Industries. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var keyboard = UINib(nibName: "defaultKeyboard", bundle: nil)
        var subset = keyboard.instantiateWithOwner(self, options: nil)
        view = subset[0] as! UIView;
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
//    }

//    override func textWillChange(textInput: UITextInput) {
        // The app is about to change the document's contents. Perform any preparation here.
//    }

//    override func textDidChange(textInput: UITextInput) {
        // The app has just changed the document's contents, the document context has been updated.
    
//        var textColor: UIColor
//        var proxy = self.textDocumentProxy as! UITextDocumentProxy
//        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
//            textColor = UIColor.whiteColor()
//        } else {
//            textColor = UIColor.blackColor()
//        }
//        self.nextKeyboardButton.setTitleColor(textColor, forState: .Normal)
//    }

}
