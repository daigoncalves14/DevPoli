//
//  main.swift
//  QuilometroPorLitro
//
//  Created by Daiane Goncalves on 12/01/23.
//

import Foundation

func kmLitre (km: Int) -> (KmLitre: Int, FullTank: Int, Travel300: Int, FillTimesTank450: Double, FullTankValue: Double, Travel450Value: Double) {
    
    let travelLiter: Int = km
    let tank: Int = 45
    let gasValue: Double = 5.72
    
    let travelFullTank: Int = travelLiter * tank
    
    let travel300Km: Int = 300 / travelLiter
    
    var fillFullTank: Double = 450 / Double(travelLiter) / Double(tank)
    fillFullTank = fillFullTank.rounded(.awayFromZero)
    
    let fillTankValue: Double = gasValue * Double(tank)
    
    let travel450Km: Double = 450 / Double(travelLiter) * gasValue
    
    return (travelLiter, travelFullTank, travel300Km, fillFullTank, fillTankValue, travel450Km)
}

var result = kmLitre(km: 8)
print(result)


