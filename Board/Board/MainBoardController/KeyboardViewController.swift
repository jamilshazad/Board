//
//  KeyboardViewController.swift
//  MainBoardController
//
//  Created by Muhammad Jamil on 22/02/2017.
//  Copyright © 2017 Shazad. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

//    var keyboardView: UIView!
    @IBOutlet var nextKeyboardButton: UIButton!

    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         loadInterface()
        }
    
    //MARK:loadInterface
    func loadInterface() {
        // load the nib file
        let nib = UINib(nibName: "KeyboardView", bundle: nil)
        let objects = nib.instantiate(withOwner: self, options: nil)
        view = objects[0] as! UIView;
        nextKeyboardButton.addTarget(self, action: #selector(UIInputViewController.advanceToNextInputMode), for: .touchUpInside)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
     }

}
