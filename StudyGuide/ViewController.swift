//
//  ViewController.swift
//  StudyGuide
//
//  Created by Krager, Andrew on 3/28/16.
//  Copyright © 2016 Krager, Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var conceptLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    var timer = NSTimer()
    var counter = 30;
    let conceptList : [String] = ["Protocol","Let vs. Var","Computed Initializers","Computed Variables","Setter Observers","Functions","External Parameters","Default Parameters","Anonymous Functions","Optional Chaining","Failable Initializers","Casting","Class Methods","Extensions","Enumeration","Error Handling","Dictionaries","Conditional Binder","Inheritance","Structs","Enums","Classes","Subscripts"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = NSTimer.scheduledTimerWithTimeInterval(0.8, target: self, selector: "timerAction", userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func timerAction()
    {
        --counter
        if(counter <= 0)
        {
            counter = 30
            nextItem()
        }
        else if(counter < 10)
        {
            timerLabel.text = "0:0\(counter)"
        }
        else
        {
            timerLabel.text = "0:\(counter)"
        }
    }
    @IBAction func nextAction(sender: AnyObject) {
        nextItem()
    }
    func nextItem()
    {
        var rando = Int(arc4random_uniform(22) + 1)
        conceptLabel.text = conceptList[rando]
        timerLabel.text = "0:30"
    }

}
