//
//  main.swift
//  MediaDeIdade
//
//  Created by Daiane Goncalves on 16/01/23.
//

import Foundation

func calculateAverageAgeFor () {
    let agesList: [Int] = [13, 32, 30, 29, 18, 51, 40, 79, 17]

    let under18List = agesList.filter{$0 <= 18}.filter{$0 < 40}
    let under18 = under18List.sum()
    print(under18 / under18List.count)
    
    let over18List = agesList.filter{$0 > 18}.filter{$0 <= 40}
    let over18 = over18List.sum()
    print(over18 / over18List.count)
    
    let over40List = agesList.filter{$0 > 41}
    let over40 = over40List.sum()
    print(over40 / over40List.count)
    
    let sumAllAges = agesList.sum()
    print(sumAllAges / agesList.count)
}

calculateAverageAgeFor()

extension Sequence where Element: AdditiveArithmetic {
    func sum() -> Element {reduce(.zero, +)}
}

//func calculateAverageAgeFor1 () {
//
//    let ageList: [Int] = [13, 32, 30, 29, 18, 51, 40, 79, 17]
//
//    var allAges = 0
//
//    var under18 = 0
//    var personUnder18 = 0
//
//    var under40 = 0
//    var personUnder40 = 0
//
//    var over40 = 0
//    var personOver40 = 0
//
//    for index in 0..<ageList.count {
//
//        allAges += ageList[index]
//
//        if ageList[index] < 19 {
//            under18 += ageList[index]
//            personUnder18 += 1
//        }
//        if ageList[index] >= 19 && ageList[index] <= 40 {
//            under40 += ageList[index]
//            personUnder40 += 1
//        }
//        if ageList[index] > 40  {
//            over40 += ageList[index]
//            personOver40 += 1
//        }
//    }
//    print(under18 / personUnder18)
//    print(under40 / personUnder40)
//    print(over40 / personOver40)
//    print(allAges / ageList.count)
//}
//
//calculateAverageAgeFor1()
