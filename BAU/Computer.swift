//
//  Computer.swift
//  BAU
//
//  Created by suat.karakusoglu on 05/10/2017.
//  Copyright © 2017 suat.karakusoglu. All rights reserved.
//

import Foundation

typealias TimeDuration = Double
typealias StringOps = (String) -> (Int)
typealias OpsType = (Int) -> (Int)

class Computer
{
    func doStuff(after: TimeDuration){
        
    }
    
    func operate(x: Int,_ operation: OpsType)
    {
        debugPrint("Computer started operating.")
        let operatedX = operation(x)
        debugPrint("Operated x is \(operatedX)")
    }
    
    func countDownFrom(_ ix:Int) {
        print(ix)
        if ix > 0 { // stopper
        countDownFrom(ix-1) // recurse!
        }
    }
    
    func compute(x: String) -> String
    {
        let result = x + x
        return "XX \(result)"
    }
    
    func compute(x: Int) -> String
    {
        let doubleX = x * 2
        return "Doubled \(doubleX)"
    }
    
    func crash(crashReason: String, ourMessage: String = "We are sorry.")
    {
        debugPrint("\(ourMessage): \(crashReason)")
    }
    
    func addRam(rams: Int ...)
    {
        func isRamOkay(ram: Int) -> Bool
        {
            return ram % 2 == 0
        }
        let firstRam = rams.first!
        if isRamOkay(ram: firstRam){
            debugPrint("First ram is okay")
        }
        
        debugPrint("Rams are added \(rams)")
    }
}
