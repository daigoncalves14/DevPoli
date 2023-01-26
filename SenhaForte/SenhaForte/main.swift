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
    var consecutiveNumbers = 0
    
    for (index, char) in password.enumerated() {
        if char >= "0" && char <= "9" {
            hasNumber = true
            consecutiveNumbers += 1
            if consecutiveNumbers == 3 {
                hasConsecutiveNumbers = false
            }
        } else {
            consecutiveNumbers = 0
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


let pass = "S0c0rr0"
if checkPassword(password: pass) {
    print("Senha forte")
}else{
    print("Não atende os requisitos!")
}
