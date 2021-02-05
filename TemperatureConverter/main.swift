//
//  main.swift
//  TemperatureConverter
//
//  Created by Yeseo Kim on 2021-02-02.
//

import Foundation

//INPUT
repeat {
    print("""
    C - Celcius
    F - Farenheit
    K - Farenheit
    Q - Quit program
    """) //Provides options
    let fromUnit = String.collectInput(withPrompt: "Converting from(C/F/K/Q): ", acceptableValues: ["C","F","K","Q"])
    if fromUnit == "Q" {
        break
    }
    print("\n")
    let toUnit = String.collectInput(withPrompt: "Converting to(C/F/K/Q): ", acceptableValues: ["C","F","K","Q"])
    if toUnit == "Q" {
        break
    }
    print("\n")
    let fromTemp = Double.collectInput(withPrompt: "Temperature: ", minimum: nil, maximum: nil)
    print("\n")
    print("You are converting \(fromTemp) \(fromUnit) to \(toUnit).")
    print("\n")
    
    //PROCESS & OUTPUT
    var toTemp = 0.0
    let celciusValue = toCelcius(Converting: fromTemp, From: fromUnit)
        toTemp = fromCelcius(Converting: celciusValue, To: toUnit)
    
    print("\(fromTemp) \(fromUnit) is equal to \(toTemp) \(toUnit).")
    print("\n")
    
} while true
