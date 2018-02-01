//
//  ViewController.swift
//  TestTextField
//
//  Created by Chris Hawkins on 1/31/18.
//  Copyright © 2018 Trade Me. All rights reserved.
//

import UIKit

class Method1TextField: UITextField {
    func tintClearButton() {
        // Snoop around for the clear button
        let crossButton = self
            .subviews
            .flatMap { $0 as? UIButton }
            .first
        
        // Set it to a regular cross but tinted green
        crossButton?.setImage(#imageLiteral(resourceName: "cross"), for: .normal)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        tintClearButton()
    }
}
