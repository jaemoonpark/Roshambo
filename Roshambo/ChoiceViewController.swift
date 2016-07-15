//
//  ChoiceViewController.swift
//  Roshambo
//
//  Created by Jaemoon Park on 7/14/16.
//  Copyright © 2016 Jaemoon Park. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadResults()
    {
    var opponentChoice = Int(arc4random_uniform(3))
    //0 represents rock
    //1 represents paper
    //2 represents scissors
    
        
    }
    
}
