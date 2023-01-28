//
//  main.swift
//  MeSegueAi
//
//  Created by Daiane Goncalves on 26/01/23.
//

import Foundation

func compactarNumero(valor: Int) -> String {
    var valueString :String = String(valor)
    var secNumber = ""
    
    if valueString.count >= 0 && valueString.count <= 3 {
        return valueString
    }
    
    var secondNumber = valueString[valueString.index(after: valueString.startIndex)]
    
    if secondNumber != "0" {
        secNumber = ".\(String(secondNumber))"
    }
    if valueString.count == 4 {
        let valueResult = (Int(valueString) ?? 0) / 1000
        return "\(String(valueResult))\(secNumber)k"
    }
    if valueString.count == 7 {
        let valueResult = (Int(valueString) ?? 0) / 1000000
        return "\(String(valueResult))\(secNumber)M"
    }
    return "Vazio"
}

print(compactarNumero(valor: 50)) // 50
print(compactarNumero(valor: 876)) // 876
print(compactarNumero(valor: 1000)) // 1k
print(compactarNumero(valor: 4321)) // 4.3k
print(compactarNumero(valor: 1000000)) // 1M
print(compactarNumero(valor: 7654321)) // 7.6M
