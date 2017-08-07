//
//  ViewController.swift
//  Tippy
//
//  Created by DJ on 8/1/17.
//  Copyright © 2017 DJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipBackground: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.right))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.left))
        swipeRight.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let billPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * billPercentages[0]
        
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)

    }
    
    func right(){
        if tipBackground.text == "18%"{
            tipBackground.text = "22%"
        }else if tipBackground.text == "20%"{
            tipBackground.text = "25%"
        
        } else if tipBackground.text == "25%"{
            
        
        }
    
    }
    func left(){
        if tipBackground.text == "18%"{
            
            
        }else if tipBackground.text == "20%"{
            tipBackground.text = "18%"
            
        } else if tipBackground.text == "25%"{
            tipBackground.text = "22%"
        }
    }
}

