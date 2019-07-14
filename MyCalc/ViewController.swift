//
//  ViewController.swift
//  MyCalc
//
//  Created by kazuhiroyamada on 2019/06/25.
//  Copyright © 2019 kazuhiroyamada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var priceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ResultViewController
        
        if let price = Int(priceField.text!) {
            viewController.price = price
        }
    }
    
    func setValue(_ val: String) {
        let value = priceField.text! + val

        if let price = Int(value) { // nilが帰ってくる場合があるためアンラップする
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tap1Button(_ sender: Any) {
        setValue("1")
    }
    
    @IBAction func tap2Button(_ sender: Any) {
        setValue("2")
    }
    
    @IBAction func tap3Button(_ sender: Any) {
        setValue("3")
    }
    
    @IBAction func tap4Button(_ sender: Any) {
        setValue("4")
    }
    
    @IBAction func tap5Button(_ sender: Any) {
        setValue("5")
    }
    
    @IBAction func tap6Button(_ sender: Any) {
        setValue("6")
    }
    @IBAction func tap7Button(_ sender: Any) {
        setValue("7")
    }
    
    @IBAction func tap8Button(_ sender: Any) {
        setValue("8")
    }
    
    @IBAction func tap9Button(_ sender: Any) {
        setValue("9")
    }
    
    @IBAction func tap0Button(_ sender: Any) {
        setValue("0")
    }
    
    @IBAction func tap00Button(_ sender: Any) {
        setValue("00")
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        priceField.text = "0"
    }
    
    @IBAction func restart(_ segue: UIStoryboardSegue) {
        priceField.text = "0"
    }
}

