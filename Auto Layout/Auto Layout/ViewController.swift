//
//  ViewController.swift
//  Auto Layout
//
//  Created by Programming on 26/01/2019.
//  Copyright © 2019 Programming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var buttonWidth: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        print (#function)
        button
        
    }
}

