//
//  ViewController.swift
//  TestTextField
//
//  Created by Chris Hawkins on 1/31/18.
//  Copyright © 2018 Trade Me. All rights reserved.
//

import UIKit

@objc
class Method3TextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        let clearButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 32, height: 32))
        clearButton.setImage(#imageLiteral(resourceName: "cross"), for: .normal)
        clearButton.addTarget(self, action: #selector(clear), for: .touchUpInside)
        
        self.addTarget(self, action: #selector(reevaluateClearButtonsPresence), for: .editingChanged)
        self.addTarget(self, action: #selector(reevaluateClearButtonsPresence), for: .editingDidBegin)
        self.addTarget(self, action: #selector(reevaluateClearButtonsPresence), for: .editingDidEnd)
        rightView = clearButton
    }
    
    /// Reevaluates whether the clear button should be present
    /// This logic is different to "whileEditing" on UITextFieldViewMode as it consideres the emptiness of the string
    @objc func reevaluateClearButtonsPresence() {
        let hasText = text?.isEmpty == false
        let isEditing = self.isEditing
       
        if isEditing && hasText {
            self.rightViewMode = .always
        }
        else {
            self.rightViewMode = .never
        }
    }
    
    @objc func clear() {
        self.text = nil
    }
    
    override var text: String? {
        get {
            return super.text
        }
        set {
            super.text = newValue
            reevaluateClearButtonsPresence()
        }
    }
}
