//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let lettersToMorse = ["A": ".-","B": "-...","C": "-.-.","D": "-..","E": ".","F": "..-.","G": "--.","H": "....","I": "..","J": ".---","K": "-.-","L": ".-..","M":"--","N": "-.","O": "---","P": ".--.","Q": "--.-","R": ".-.","S": "...","T": "-","U": "..-","V": "...-","W": ".--","X": "-..-","Y": "-.--","Z": "--..","a": ".-","b": "-...","c": "-.-.","d": "-..","e": ".","f": "..-.","g": "--.","h": "....","i": "..","j": ".---","k": "-.-","l": ".-..","m": "--","n": "-.","o": "---","p": ".--.","q": "--.-","r": ".-.","s": "...","t": "-","u": "..-","v": "...-","w": ".--","x": "-..-","y": "-.--","z": "--..","1": ".----","2": "..---","3": "...--","4": "....-","5": ".....","6": "-....","7": "--...","8": "---..","9": "----.","0": "-----"," ": " "]

func convertLetterToMorse(input: Character) -> String {
    var morsecode = lettersToMorse[String(input)]
    if morsecode == nil {
        morsecode = ""
    }
    
    return morsecode!
    
 }

func convertStringToMorse(input: String) -> String {
    var word = input
    var resultString = ""
    for character in word.characters {
        let resultCharacter = convertLetterToMorse(character)
        if resultCharacter != "" {
            resultString += resultCharacter + " "
        }
    }
    return resultString
}

print(convertStringToMorse("this shit is bananas"))