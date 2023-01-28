//
//  main.swift
//  MeSegueAi
//
//  Created by Daiane Goncalves on 26/01/23.
//

import Foundation

func compactarNumero(valor: Int) -> String {
    let valueString :String = String(valor)
    var secNumber = ""
    
    switch valueString.count {
        case 1:
            secNumber = ""
        default:
        let secondNumber = valueString[valueString.index(after: valueString.startIndex)]
            secNumber = ".\(String(secondNumber))"
    }

    switch valueString.count {
    case 4:
        let valueResult = (Int(valueString) ?? 0) / 1000
        return "\(String(valueResult))\(secNumber)k"
    case 7:
        let valueResult = (Int(valueString) ?? 0) / 1000000
        return "\(String(valueResult))\(secNumber)M"
    default:
        return valueString
    }
}

print(compactarNumero(valor: 1)) // 50
print(compactarNumero(valor: 50)) // 50
print(compactarNumero(valor: 876)) // 876
print(compactarNumero(valor: 1000)) // 1k
print(compactarNumero(valor: 4321)) // 4.3k
print(compactarNumero(valor: 1000000)) // 1M
print(compactarNumero(valor: 7654321)) // 7.6M
