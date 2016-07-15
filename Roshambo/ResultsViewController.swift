//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Jaemoon Park on 7/14/16.
//  Copyright © 2016 Jaemoon Park. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var userChoice: Int?
    var opponentChoice: Int?
    @IBOutlet var resultImage: UIImageView!
    @IBOutlet var resultText: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        //checking to see if userChoice is nil or not
        
        if self.userChoice != nil && self.opponentChoice != nil{
            switch (self.userChoice!,self.opponentChoice!){
            case (0,2):
                self.resultText.text = "You win! Rock beats scissor!"
                self.resultImage.image = UIImage(named: "RockCrushesScissors")
            case (1,0):
                self.resultText.text = "You win! Paper beats rock!"
                self.resultImage.image = UIImage(named: "PaperCoversRock")
            case (2,1):
                self.resultText.text = "You win! Scissor beats paper!"
                self.resultImage.image = UIImage(named: "ScissorsCutPaper")
            case (2,0):
                self.resultText.text = "You lose! Rock beats scissor!"
                self.resultImage.image = UIImage(named: "RockCrushesScissors")
            case (0,1):
                self.resultText.text = "You lose! Paper beats rock!"
                self.resultImage.image = UIImage(named: "PaperCoversRock")
            case (1,2):
                self.resultText.text = "You lose! Scissor beats paper!"
                self.resultImage.image = UIImage(named: "ScissorsCutPaper")
            default:
                self.resultText.text = "An error took place. Please reload the app."
                self.resultImage.image = nil
                
            }
        }
        else{
            self.resultText.text = "An error took place. Please reload the app."
            self.resultImage.image = nil
        }
        
    }
    
    @IBAction func replay(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}