//
//  Functions.swift
//  TemperatureConverter
//
//  Created by Yeseo Kim on 2021-02-03.
//

import Foundation

//FUNCTIONS
func toCelcius(Converting fromTemp: Double, From fromUnit: String) -> Double {
    var toTemp = 0.0
    switch fromUnit {
    case "C" :
        toTemp = fromTemp
    case "F" :
        toTemp = (fromTemp - 32) * 5/9
    case "K" :
        toTemp = fromTemp - 273.15
    default :
        break
    }
    return toTemp
}

func fromCelcius(Converting fromTemp: Double, To toUnit: String) -> Double {
    var toTemp = 0.0
    switch toUnit {
    case "C" :
        toTemp = fromTemp
    case "F" :
        toTemp = fromTemp * 1.8 + 32
    case "K" :
        toTemp = fromTemp + 273.15
    default :
        break
    }
    return toTemp
}

