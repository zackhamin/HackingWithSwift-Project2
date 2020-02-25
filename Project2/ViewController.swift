//
//  ViewController.swift
//  Project2
//
//  Created by Ishaq Amin on 25/02/2020.
//  Copyright © 2020 Ishaq Amin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia","france","germany","ireland","italy","monaco","nigeria","poland","russia","spain","uk","us"]
        //        countries.append("estonia") The above is a better and neater way to create an array.
        
        askQuestions()
    }
    func askQuestions() {
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }
    
}

