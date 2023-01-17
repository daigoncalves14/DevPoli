//
//  main.swift
//  MediaDeIdade
//
//  Created by Daiane Goncalves on 16/01/23.
//

import Foundation

print("Hello, World!")


func calculateAverageAge () {
    
    let ageList: [Int] = [13, 32, 30, 29, 18, 51, 40, 79, 17]

    var allAges = 0
    
    var under18 = 0
    var personUnder18 = 0
    
    var under40 = 0
    var personUnder40 = 0
    
    var over40 = 0
    var personOver40 = 0
    
    for index in 0..<ageList.count {
        
        allAges += ageList[index]
        
        if ageList[index] < 19 {
            under18 += ageList[index]
            personUnder18 += 1
        }
        if ageList[index] >= 19 && ageList[index] <= 40 {
            under40 += ageList[index]
            personUnder40 += 1
        }
        if ageList[index] > 40  {
            over40 += ageList[index]
            personOver40 += 1
        }
    }
    print(under18 / personUnder18)
    print(under40 / personUnder40)
    print(over40 / personOver40)
    print(allAges / ageList.count)
}

calculateAverageAge()
