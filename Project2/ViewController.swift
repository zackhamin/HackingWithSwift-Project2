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
    var correctAnswer = 0
    var questionsAsked = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia","france","germany","ireland","italy","monaco","nigeria","poland","russia","spain","uk","us"]
        //        countries.append("estonia") The above is a better and neater way to create an array.
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestions(action: nil)
    }
    func askQuestions(action: UIAlertAction!) {
        countries.shuffle()
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        correctAnswer = Int.random(in: 0...2)
        title = countries[correctAnswer].uppercased() + " (Your Score is \(score))"
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title:String
        
        if sender.tag == correctAnswer{
            title = "Correct!"
            score += 1
            questionsAsked += 1
            if questionsAsked == 10{
                let ac = UIAlertController(title: title, message: "Your score is \(score). Game over!", preferredStyle: .alert); ac.addAction(UIAlertAction(title: "Play again", style: .default, handler: askQuestions)); present(ac,animated: true)
            }
        } else {
            title = "Wrong!"
            score -= score
            questionsAsked += 1
            let ac = UIAlertController(title: title, message: "Wrong! That is the flag of\(countries)", preferredStyle: .alert); ac.addAction(UIAlertAction(title: "Play again", style: .default, handler: askQuestions)); present(ac,animated: true)
        }
        let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert); ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestions)); present(ac,animated: true)
    }
    
}

