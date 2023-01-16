//
//  main.swift
//  QuilometroPorLitro
//
//  Created by Daiane Goncalves on 12/01/23.
//

import Foundation

func kmPerLitre (kmTraveled: Int, literToComplete: Int) -> (travelLiter: Int, FullTank: Int, Travel300: Int, FillTimesTank450: Double, FullTankValue: Double, Travel450Value: Double) {
    
    let tank: Int = 45
    
    let travelLiter: Int = kmLitre(kmTraveled: kmTraveled, literToComplete: literToComplete)
    
    let gasValue: Double = 5.72

    let travelFullTank: Int = travelLiter * tank
    
    let travel300Km: Int = 300 / travelLiter
    
    var fillFullTank: Double = 450 / Double(travelLiter) / Double(tank)
    fillFullTank = fillFullTank.rounded(.awayFromZero)
    
    let fillTankValue: Double = gasValue * Double(tank)
    
    let travel450Km: Double = 450 / Double(travelLiter) * gasValue
    
    if travelLiter == 1 {
        print("A capacidade máxima do tanque é de \(tank) litros.")
    } else{
        
    }
    return (travelLiter, travelFullTank, travel300Km, fillFullTank, fillTankValue, travel450Km)
}

func kmLitre (kmTraveled: Int, literToComplete: Int) -> Int {
    if literToComplete > 45 {
        return 1
    } else {
        return  kmTraveled / literToComplete
    }
}

var result = kmPerLitre(kmTraveled: 500, literToComplete: 20)
print(result)
