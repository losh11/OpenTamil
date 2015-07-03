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
    
    //Declaration of sub-characters
    
    @IBOutlet weak var textOne: UIButton!
    @IBOutlet weak var textTwo: UIButton!
    @IBOutlet weak var textThree: UIButton!
    @IBOutlet weak var textFour: UIButton!
    @IBOutlet weak var textFive: UIButton!
    @IBOutlet weak var textSix: UIButton!
    @IBOutlet weak var textSeven: UIButton!
    @IBOutlet weak var textEight: UIButton!
    @IBOutlet weak var textNine: UIButton!
    @IBOutlet weak var textTen: UIButton!
    @IBOutlet weak var textEleven: UIButton!
    @IBOutlet weak var textTwelve: UIButton!
    @IBOutlet weak var textLast: UIButton!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let keyboard = UINib(nibName: "defaultKeyboard", bundle: nil)
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
    
    @IBAction func didTapButtonWithValue(sender: AnyObject) {
        let button = sender.titleLabel!!.text
        let title = button as String!
        let proxy = textDocumentProxy as! UITextDocumentProxy
        
        switch title {
        case "⇤" :
            proxy.deleteBackward()
        case "return" :
            proxy.insertText("\n")
        case "space" :
            proxy.insertText(" ")
        case "அ" :
            textOne.setTitle("அ", forState: .Normal)
            textTwo.setTitle("ஆ", forState: .Normal)
            textThree.setTitle("இ", forState: .Normal)
            textFour.setTitle("ஈ", forState: .Normal)
            textFive.setTitle("உ", forState: .Normal)
            textSix.setTitle("ஊ", forState: .Normal)
            textSeven.setTitle("எ", forState: .Normal)
            textEight.setTitle("ஏ", forState: .Normal)
            textNine.setTitle("ஐ", forState: .Normal)
            textTen.setTitle("ஒ", forState: .Normal)
            textEleven.setTitle("ஓ", forState: .Normal)
            textTwelve.setTitle("ஔ", forState: .Normal)
            textLast.setTitle("ஃ", forState: .Normal)
        case "க" :
            textOne.setTitle("க", forState: .Normal)
            textTwo.setTitle("கா", forState: .Normal)
            textThree.setTitle("கி", forState: .Normal)
            textFour.setTitle("கீ", forState: .Normal)
            textFive.setTitle("கு", forState: .Normal)
            textSix.setTitle("கூ", forState: .Normal)
            textSeven.setTitle("கெ", forState: .Normal)
            textEight.setTitle("கே", forState: .Normal)
            textNine.setTitle("கை", forState: .Normal)
            textTen.setTitle("கொ", forState: .Normal)
            textEleven.setTitle("கோ", forState: .Normal)
            textTwelve.setTitle("கௌ", forState: .Normal)
            textLast.setTitle("க்", forState: .Normal)
        case "ங" :
            textOne.setTitle("ங", forState: .Normal)
            textTwo.setTitle("ஙா", forState: .Normal)
            textThree.setTitle("ஙி", forState: .Normal)
            textFour.setTitle("ஙீ", forState: .Normal)
            textFive.setTitle("ஙு", forState: .Normal)
            textSix.setTitle("ஙூ", forState: .Normal)
            textSeven.setTitle("ஙெ", forState: .Normal)
            textEight.setTitle("ஙே", forState: .Normal)
            textNine.setTitle("ஙை", forState: .Normal)
            textTen.setTitle("ஙொ", forState: .Normal)
            textEleven.setTitle("ஙோ", forState: .Normal)
            textTwelve.setTitle("ஙௌ", forState: .Normal)
            textLast.setTitle("ங்", forState: .Normal)
        case "ச" :
            textOne.setTitle("ச", forState: .Normal)
            textTwo.setTitle("சா", forState: .Normal)
            textThree.setTitle("சி", forState: .Normal)
            textFour.setTitle("சீ", forState: .Normal)
            textFive.setTitle("சு", forState: .Normal)
            textSix.setTitle("சூ", forState: .Normal)
            textSeven.setTitle("செ", forState: .Normal)
            textEight.setTitle("சே", forState: .Normal)
            textNine.setTitle("சை", forState: .Normal)
            textTen.setTitle("சொ", forState: .Normal)
            textEleven.setTitle("சோ", forState: .Normal)
            textTwelve.setTitle("சௌ", forState: .Normal)
            textLast.setTitle("ச்", forState: .Normal)
        case "ஞ" :
            textOne.setTitle("ஞ", forState: .Normal)
            textTwo.setTitle("ஞா", forState: .Normal)
            textThree.setTitle("ஞி", forState: .Normal)
            textFour.setTitle("ஞீ", forState: .Normal)
            textFive.setTitle("ஞு", forState: .Normal)
            textSix.setTitle("ஞூ", forState: .Normal)
            textSeven.setTitle("ஞெ", forState: .Normal)
            textEight.setTitle("ஞே", forState: .Normal)
            textNine.setTitle("ஞை", forState: .Normal)
            textTen.setTitle("ஞொ", forState: .Normal)
            textEleven.setTitle("ஞோ", forState: .Normal)
            textTwelve.setTitle("ஞௌ", forState: .Normal)
            textLast.setTitle("ஞ்", forState: .Normal)
        case "ட" :
            textOne.setTitle("ட", forState: .Normal)
            textTwo.setTitle("டா", forState: .Normal)
            textThree.setTitle("டி", forState: .Normal)
            textFour.setTitle("டீ", forState: .Normal)
            textFive.setTitle("டு", forState: .Normal)
            textSix.setTitle("டூ", forState: .Normal)
            textSeven.setTitle("டெ", forState: .Normal)
            textEight.setTitle("டே", forState: .Normal)
            textNine.setTitle("டை", forState: .Normal)
            textTen.setTitle("டொ", forState: .Normal)
            textEleven.setTitle("டோ", forState: .Normal)
            textTwelve.setTitle("டௌ", forState: .Normal)
            textLast.setTitle("ட்", forState: .Normal)
        case "ண" :
            textOne.setTitle("ண", forState: .Normal)
            textTwo.setTitle("ணா", forState: .Normal)
            textThree.setTitle("ணி", forState: .Normal)
            textFour.setTitle("ணீ", forState: .Normal)
            textFive.setTitle("ணு", forState: .Normal)
            textSix.setTitle("ணூ", forState: .Normal)
            textSeven.setTitle("ணெ", forState: .Normal)
            textEight.setTitle("ணே", forState: .Normal)
            textNine.setTitle("ணை", forState: .Normal)
            textTen.setTitle("ணொ", forState: .Normal)
            textEleven.setTitle("ணோ", forState: .Normal)
            textTwelve.setTitle("ணௌ", forState: .Normal)
            textLast.setTitle("ண்", forState: .Normal)
        case "த" :
            textOne.setTitle("த", forState: .Normal)
            textTwo.setTitle("தா", forState: .Normal)
            textThree.setTitle("தி", forState: .Normal)
            textFour.setTitle("தீ", forState: .Normal)
            textFive.setTitle("து", forState: .Normal)
            textSix.setTitle("தூ", forState: .Normal)
            textSeven.setTitle("தெ", forState: .Normal)
            textEight.setTitle("தே", forState: .Normal)
            textNine.setTitle("தை", forState: .Normal)
            textTen.setTitle("தொ", forState: .Normal)
            textEleven.setTitle("தோ", forState: .Normal)
            textTwelve.setTitle("தௌ", forState: .Normal)
            textLast.setTitle("த்", forState: .Normal)
        case "ந" :
            textOne.setTitle("ந", forState: .Normal)
            textTwo.setTitle("நா", forState: .Normal)
            textThree.setTitle("நி", forState: .Normal)
            textFour.setTitle("நீ", forState: .Normal)
            textFive.setTitle("நு", forState: .Normal)
            textSix.setTitle("நூ", forState: .Normal)
            textSeven.setTitle("நெ", forState: .Normal)
            textEight.setTitle("நே", forState: .Normal)
            textNine.setTitle("நை", forState: .Normal)
            textTen.setTitle("நொ", forState: .Normal)
            textEleven.setTitle("நோ", forState: .Normal)
            textTwelve.setTitle("நௌ", forState: .Normal)
            textLast.setTitle("ந்", forState: .Normal)
        case "ப" :
            textOne.setTitle("ப", forState: .Normal)
            textTwo.setTitle("பா", forState: .Normal)
            textThree.setTitle("பி", forState: .Normal)
            textFour.setTitle("பீ", forState: .Normal)
            textFive.setTitle("பு", forState: .Normal)
            textSix.setTitle("பூ", forState: .Normal)
            textSeven.setTitle("பெ", forState: .Normal)
            textEight.setTitle("பே", forState: .Normal)
            textNine.setTitle("பை", forState: .Normal)
            textTen.setTitle("பொ", forState: .Normal)
            textEleven.setTitle("போ", forState: .Normal)
            textTwelve.setTitle("பௌ", forState: .Normal)
            textLast.setTitle("ப்", forState: .Normal)
        case "ம" :
            textOne.setTitle("ம", forState: .Normal)
            textTwo.setTitle("மா", forState: .Normal)
            textThree.setTitle("மி", forState: .Normal)
            textFour.setTitle("மீ", forState: .Normal)
            textFive.setTitle("மு", forState: .Normal)
            textSix.setTitle("மூ", forState: .Normal)
            textSeven.setTitle("மெ", forState: .Normal)
            textEight.setTitle("மே", forState: .Normal)
            textNine.setTitle("மை", forState: .Normal)
            textTen.setTitle("மொ", forState: .Normal)
            textEleven.setTitle("மோ", forState: .Normal)
            textTwelve.setTitle("மௌ", forState: .Normal)
            textLast.setTitle("ம்", forState: .Normal)
        case "ய" :
            textOne.setTitle("ய", forState: .Normal)
            textTwo.setTitle("யா", forState: .Normal)
            textThree.setTitle("யி", forState: .Normal)
            textFour.setTitle("யீ", forState: .Normal)
            textFive.setTitle("யு", forState: .Normal)
            textSix.setTitle("யூ", forState: .Normal)
            textSeven.setTitle("யெ", forState: .Normal)
            textEight.setTitle("யே", forState: .Normal)
            textNine.setTitle("யை", forState: .Normal)
            textTen.setTitle("யொ", forState: .Normal)
            textEleven.setTitle("யோ", forState: .Normal)
            textTwelve.setTitle("யௌ", forState: .Normal)
            textLast.setTitle("ய்", forState: .Normal)
        case "ர" :
            textOne.setTitle("ர", forState: .Normal)
            textTwo.setTitle("ரா", forState: .Normal)
            textThree.setTitle("ரி", forState: .Normal)
            textFour.setTitle("ரீ", forState: .Normal)
            textFive.setTitle("ரு", forState: .Normal)
            textSix.setTitle("ரூ", forState: .Normal)
            textSeven.setTitle("ரெ", forState: .Normal)
            textEight.setTitle("ரே", forState: .Normal)
            textNine.setTitle("ரை", forState: .Normal)
            textTen.setTitle("ரொ", forState: .Normal)
            textEleven.setTitle("ரோ", forState: .Normal)
            textTwelve.setTitle("ரௌ", forState: .Normal)
            textLast.setTitle("ர்", forState: .Normal)
        case "ல" :
            textOne.setTitle("ல", forState: .Normal)
            textTwo.setTitle("லா", forState: .Normal)
            textThree.setTitle("லி", forState: .Normal)
            textFour.setTitle("லீ", forState: .Normal)
            textFive.setTitle("லு", forState: .Normal)
            textSix.setTitle("லூ", forState: .Normal)
            textSeven.setTitle("லெ", forState: .Normal)
            textEight.setTitle("லே", forState: .Normal)
            textNine.setTitle("லை", forState: .Normal)
            textTen.setTitle("லொ", forState: .Normal)
            textEleven.setTitle("லோ", forState: .Normal)
            textTwelve.setTitle("லௌ", forState: .Normal)
            textLast.setTitle("ல்", forState: .Normal)
        case "வ" :
            textOne.setTitle("வ", forState: .Normal)
            textTwo.setTitle("வா", forState: .Normal)
            textThree.setTitle("வி", forState: .Normal)
            textFour.setTitle("வீ", forState: .Normal)
            textFive.setTitle("வு", forState: .Normal)
            textSix.setTitle("வூ", forState: .Normal)
            textSeven.setTitle("வெ", forState: .Normal)
            textEight.setTitle("வே", forState: .Normal)
            textNine.setTitle("வை", forState: .Normal)
            textTen.setTitle("வொ", forState: .Normal)
            textEleven.setTitle("வோ", forState: .Normal)
            textTwelve.setTitle("வௌ", forState: .Normal)
            textLast.setTitle("வ்", forState: .Normal)
        case "ழ" :
            textOne.setTitle("ழ", forState: .Normal)
            textTwo.setTitle("ழா", forState: .Normal)
            textThree.setTitle("ழி", forState: .Normal)
            textFour.setTitle("ழீ", forState: .Normal)
            textFive.setTitle("ழு", forState: .Normal)
            textSix.setTitle("ழூ", forState: .Normal)
            textSeven.setTitle("ழெ", forState: .Normal)
            textEight.setTitle("ழே", forState: .Normal)
            textNine.setTitle("ழை", forState: .Normal)
            textTen.setTitle("ழொ", forState: .Normal)
            textEleven.setTitle("ழோ", forState: .Normal)
            textTwelve.setTitle("ழௌ", forState: .Normal)
            textLast.setTitle("ழ்", forState: .Normal)
        case "ள" :
            textOne.setTitle("ள", forState: .Normal)
            textTwo.setTitle("ளா", forState: .Normal)
            textThree.setTitle("ளி", forState: .Normal)
            textFour.setTitle("ளீ", forState: .Normal)
            textFive.setTitle("ளு", forState: .Normal)
            textSix.setTitle("ளூ", forState: .Normal)
            textSeven.setTitle("ளெ", forState: .Normal)
            textEight.setTitle("ளே", forState: .Normal)
            textNine.setTitle("ளை", forState: .Normal)
            textTen.setTitle("ளொ", forState: .Normal)
            textEleven.setTitle("ளோ", forState: .Normal)
            textTwelve.setTitle("ளௌ", forState: .Normal)
            textLast.setTitle("ள்", forState: .Normal)
        case "ற" :
            textOne.setTitle("ற", forState: .Normal)
            textTwo.setTitle("றா", forState: .Normal)
            textThree.setTitle("றி", forState: .Normal)
            textFour.setTitle("றீ", forState: .Normal)
            textFive.setTitle("று", forState: .Normal)
            textSix.setTitle("றூ", forState: .Normal)
            textSeven.setTitle("றெ", forState: .Normal)
            textEight.setTitle("றே", forState: .Normal)
            textNine.setTitle("றை", forState: .Normal)
            textTen.setTitle("றொ", forState: .Normal)
            textEleven.setTitle("றோ", forState: .Normal)
            textTwelve.setTitle("றௌ", forState: .Normal)
            textLast.setTitle("ற்", forState: .Normal)
        case "ன" :
            textOne.setTitle("ன", forState: .Normal)
            textTwo.setTitle("னா", forState: .Normal)
            textThree.setTitle("னி", forState: .Normal)
            textFour.setTitle("னீ", forState: .Normal)
            textFive.setTitle("னு", forState: .Normal)
            textSix.setTitle("னூ", forState: .Normal)
            textSeven.setTitle("னெ", forState: .Normal)
            textEight.setTitle("னே", forState: .Normal)
            textNine.setTitle("னை", forState: .Normal)
            textTen.setTitle("னொ", forState: .Normal)
            textEleven.setTitle("னோ", forState: .Normal)
            textTwelve.setTitle("னௌ", forState: .Normal)
            textLast.setTitle("ன்", forState: .Normal)
        default :
            proxy.insertText(title)
        }
    }
    
    @IBAction func createCharacter(sender: AnyObject) {
        let button = sender.titleLabel!!.text
        let title = button as String!
        let proxy = textDocumentProxy as! UITextDocumentProxy
        proxy.insertText(title)
    }
    
    @IBAction func didTapFullReturn(sender: AnyObject) {
        
        // Resets view back to default
        
        frontRowOne.hidden = false
        frontRowTwo.hidden = false
        frontRowThree.hidden = false
        frontRowFour.hidden = false
        backRowOne.hidden = true
        backRowTwo.hidden = true
        backRowThree.hidden = true
        backRowFour.hidden = true
        
        // Resets sub-layers
        // Better load times and looks less glitchy
        
        textOne.setTitle("", forState: .Normal)
        textTwo.setTitle("", forState: .Normal)
        textThree.setTitle("", forState: .Normal)
        textFour.setTitle("", forState: .Normal)
        textFive.setTitle("", forState: .Normal)
        textSix.setTitle("", forState: .Normal)
        textSeven.setTitle("", forState: .Normal)
        textEight.setTitle("", forState: .Normal)
        textNine.setTitle("", forState: .Normal)
        textTen.setTitle("", forState: .Normal)
        textEleven.setTitle("", forState: .Normal)
        textTwelve.setTitle("", forState: .Normal)
        textLast.setTitle("", forState: .Normal)
    }
    
    @IBAction func didChangeKeyboard(sender: AnyObject) {
        advanceToNextInputMode()
    }
    
}

