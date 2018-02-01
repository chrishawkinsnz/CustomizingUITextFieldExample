//
//  ViewController.swift
//  TestTextField
//
//  Created by Chris Hawkins on 1/31/18.
//  Copyright © 2018 Trade Me. All rights reserved.
//

import UIKit
class Method2ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        UIButton.appearance(whenContainedInInstancesOf: [Method2TextField.self]).tintColor = .green
    }
}

class Method2TextField: UITextField {

}
