//
//  FirstViewController.swift
//  Drink Tally
//
//  Created by Alexander Chen on 4/24/20.
//  Copyright © 2020 Apps by Alex Chen. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var labelCount: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBAction func tapAction(sender: AnyObject) {
//        let button : UIButton = sender as! UIButton
        if let text = self.labelCount.text {
            let newText : String = increaseCounter(text: text)
            self.labelCount.text = newText
        }
    }
    
    @IBAction func resetAction(sender: AnyObject) {
        labelCount.text = "0"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupScreen()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupScreen() {
        resetButton.tintColor = .black ;
        tapButton.tintColor = .systemBlue ;
        tapButton.backgroundColor = .systemTeal ;
        resetButton.backgroundColor = .systemRed ;
    }
    
    func increaseCounter(text : String) -> String {
        var value : Int = Int(text)!
        value = value + 1
        return String(value)
    }


}

