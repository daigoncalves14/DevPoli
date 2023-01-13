//
//  main.swift
//  QuilometroPorLitro
//
//  Created by Daiane Goncalves on 12/01/23.
//

import Foundation


let tank: Int = 45
let gasValue: Double = 5.72
let travelLiter: Int = 8
print("O carro percorre \(travelLiter) quilometros com o litro de gasolina.")

let travelFullTank: Int = travelLiter * tank
print("O carro percorre \(travelFullTank) quilometros com o tanque cheio.")

let travel300Km: Int = 300 / travelLiter
print("O carro consome \(travel300Km) litros numa viagem de 300 quilometros.")

let fillFullTank: Double = 450 / Double(travelLiter) / Double(tank)
print("O carro precisa encher o tanque \(Int(fillFullTank.rounded(.awayFromZero))) vezes para percorrer 450 quilometros.")

let fillTankValue: Double = gasValue * Double(tank)
print("Custa \(fillTankValue) reais para encher o tanque com gasolina.")

let travel450Km: Double = 450 / Double(travelLiter) * gasValue
print("Custa \(travel450Km) reais para um viagem de 450 quilometros.")




