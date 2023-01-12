import UIKit

var greeting = "Hello, playground"

func findVowelConsonant(mystr: String) ->(Vowels: Int, Consonant: Int, Character: Int, Words: Int) {
    var myString = mystr.lowercased()
    
    var words = myString.components(separatedBy: .whitespacesAndNewlines)
    let countWords = words.count
    
    var characters = myString.components(separatedBy: " ").joined(separator: "")
    var countCharacters = characters.count
    
    
    var countVowel = 0
    var countConsonant = 0
    
    var myVowel = "aeiou"
    var myConsonant = "bcdfghjklmnpqrstvwxyz"
    
    for i in myString {
        if myVowel.contains(i){
            countVowel += 1
        }
        else if myConsonant.contains(i){
            countConsonant += 1
        }
    }
    return (countVowel, countConsonant, countCharacters, countWords)
}

var result = findVowelConsonant(mystr: "aba EDE OfO")
print(result)
