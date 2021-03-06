//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Vivin Raj on 13/05/16.
//  Copyright © 2016 Vivin Raj. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var result: String?
    var score: String?
    
    @IBOutlet var resultImage: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        print("Result :\(result)")
        print("Score:\(resultLabel)")
        
       if let result = self.result {
            self.resultImage.image = UIImage(named: "\(result)")
        }
        else  {
            self.resultImage.image = nil
        }
        
        if let score2 = self.score {
            self.resultLabel.text = "\(score2)"
        }
        else {
            self.resultLabel.text = "Oops! something wrong"
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
