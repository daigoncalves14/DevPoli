//
//  main.swift
//  SenhaForte
//
//  Created by Daiane Goncalves on 20/01/23.
//

import Foundation

func checkPassword(password: String) -> Bool {
    var hasUpperCase = false
    var hasLowerCase = false
    var hasNumber = false
    var hasSpecialCharacter = true
    var hasConsecutiveNumbers = true
    var previousNumber = -1
    var previousPreviousNumber = -1
    
    for (index, char) in password.enumerated() {
        if char >= "0" && char <= "9" {
            hasNumber = true
            if previousPreviousNumber + 1 == previousNumber && previousNumber + 1 == Int(String(char)) {
                hasConsecutiveNumbers = false
                break
            }
            previousPreviousNumber = previousNumber
            previousNumber = Int(String(char)) ?? 0
        } else {
            if index == 0 && char.isUppercase {
                hasUpperCase = true
            } else if char >= "a" && char <= "z" {
                hasLowerCase = true
            } else if "!&^%$#@_".contains(char) {
                hasSpecialCharacter = false
            }
        }
    }
    return password.count >= 5 && password.count <= 15 && hasUpperCase && hasLowerCase && hasNumber && hasSpecialCharacter && hasConsecutiveNumbers
}


let pass = "S125p"
if checkPassword(password: pass) {
    print("Senha forte")
}else{
    print("Não atende os requisitos!")
}
