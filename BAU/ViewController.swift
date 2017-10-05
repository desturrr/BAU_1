//
//  ViewController.swift
//  BAU
//
//  Created by suat.karakusoglu on 05/10/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    class func multiply(number number1: Int, by number2: Int) -> Int
    {
        return number1 * number2
    }
    
    class func sumTwoNum(first x: Int, second y: Int) -> Int
    {
        let result = x + y
        return result
    }
    
    class func writePoem(writerName: String)
    {
        debugPrint("This is lovely poem by \\ \(writerName)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let computerBlue = Computer()
        
        let numberToOperate = 2
        
        let multiplyBy4Ops: OpsType = { (number: Int) -> (Int) in
            return number * 4
        }
        
        let multiplyBy2Ops: OpsType = { (number: Int) -> (Int) in
            return number * 2
        }
        
        computerBlue.operate(x: numberToOperate, multiplyBy4Ops)
        computerBlue.operate(x: numberToOperate, multiplyBy2Ops)

        
        let computed = computerBlue.compute(x: "Mahmut")
        debugPrint(computed)
        computerBlue.crash(crashReason: "Ram out of.", ourMessage: "Buy some ram nigga.")
        computerBlue.crash(crashReason: "CPU exploded.")
        computerBlue.addRam(rams: 3,4,5)
        computerBlue.addRam(rams: 1,2)
        
        computerBlue.countDownFrom(20)
    }
}

