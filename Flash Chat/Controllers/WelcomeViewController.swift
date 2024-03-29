//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.dynamicText(text: K.appName)
    }
}

extension UILabel {
    func dynamicText(text: String) {
        self.text = ""
        var charIndex = 0
        let titleText = text
        
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) { timer in
                self.text?.append(letter )
            }
            charIndex += 1
        }
    }
}

