//
//  ViewController.swift
//  Roshambo
//
//  Created by Vivin Raj on 07/05/16.
//  Copyright © 2016 Vivin Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func randomShape() -> String {
       let  Shape = ["Rock", "Paper", "Scissors"]
       let randomNumber = Int(arc4random() % 3)
        print("\(Shape[randomNumber])")
       return Shape[randomNumber]
    }
    
    @IBAction func scissorsButton(sender: AnyObject) {
        performSegueWithIdentifier("scissorsButtonSegue", sender: self)
    }
    
    
    @IBAction func rockButton(sender: AnyObject) {
        performSegueWithIdentifier("rockButtonSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "rockButtonSegue" {
            
            let controller = segue.destinationViewController as! ResultsViewController
            let computerShape = randomShape()
        
            if computerShape == "Rock"{
                controller.result = "tie"
            }
            else
            if computerShape == "Paper"{
                controller.result = "PaperCoversRock"
            }
            else
            if computerShape == "Scissors"{
                controller.result = "RockCrushesScissors"
            }
        }
        
        if segue.identifier == "scissorsButtonSegue" {
            
            let controller = segue.destinationViewController as! ResultsViewController
            let computerShape = randomShape()
            
            if computerShape == "Scissors" {
                controller.result = "tie"
            }
            else if computerShape == "Paper" {
                controller.result = "ScissorsCutPaper"
            }
            else if computerShape == "Rock" {
                controller.result = "RockCrushesScissors"
            }
            
            presentViewController(controller, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func paperCompare(sender: AnyObject) {
        //Putting value from func randomShape to another variable
        var controller: ResultsViewController
        
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        
        let computerShape = randomShape()
        
        if computerShape == "Paper"{
            controller.result = "tie"
        }
        else if computerShape == "Rock"{
            controller.result = "PaperCoversRock"
        }
        else if computerShape == "Scissors"{
            controller.result = "ScissorsCutPaper"
            //Scissor cuts paper
        }
        
        presentViewController(controller, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    
    }


}

