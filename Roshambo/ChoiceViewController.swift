//
//  ChoiceViewController.swift
//  Roshambo
//
//  Created by Jaemoon Park on 7/14/16.
//  Copyright © 2016 Jaemoon Park. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {
    var boolPaper = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! ResultsViewController
        controller.opponentChoice = Int(arc4random_uniform(3))
        if boolPaper{
            controller.userChoice = 1
            boolPaper = false
        }
        else{
            controller.userChoice = 2
        }
        print(controller.opponentChoice)
        print(controller.userChoice)
    }
    
    @IBAction func chosePaper()
    {
        boolPaper = true
        performSegueWithIdentifier("seguePaper", sender: self)

    }
    
    @IBAction func choseRock(){
        var controller: ResultsViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        controller.userChoice = 0
        controller.opponentChoice = Int(arc4random_uniform(3))
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
    
}
