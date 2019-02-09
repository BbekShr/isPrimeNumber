//
//  ViewController.swift
//  isPrimeNumber
//
//  Created by Bibek Shrestha on 2/8/19.
//  Copyright © 2019 Bibek Shrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputNum: UITextField!
    @IBOutlet weak var showResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        print("Button tapped")
        let num = Int(inputNum.text!)
        //let result = Int(showResult.text!)
        if (num == 1) {
            showResult.text = "\(num!) is not a Prime number!!"
        } else if (num == 2) || (num == 3){
            showResult.text = "\(num!) is a Prime number!!"
        } else {
        
        for index in 2...(num!/2){
            if (num! % index == 0) {
                //print ("Not a Prime")
                showResult.text = "\(num!) is not a Prime number!!"
            } else {
                showResult.text = "\(num!) is a Prime number!!"
            }
            
            }
        }
    }
    

}

