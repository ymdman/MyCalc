//
//  ResultViewController.swift
//  MyCalc
//
//  Created by kazuhiroyamada on 2019/07/08.
//  Copyright © 2019 kazuhiroyamada. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var price: Int = 0
    let percentValue: Float = 0.1

    @IBOutlet weak var resultFiled: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let discountPrice = Float(price) * percentValue
        let percentOffPrice = price - Int(discountPrice)

        resultFiled.text = "\(percentOffPrice)"
        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
