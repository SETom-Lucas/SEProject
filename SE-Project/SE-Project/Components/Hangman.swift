//
//  Hangman.swift
//  SE-Project
//
//  Created by Lucas Villiere on 24/05/2022.
//

import Foundation
import SwiftUI

public class Hangman : ObservableObject {
    @Published var word = ""
    @Published var wordDisplayArray : [Character] = []
    @Published var wordDisplay = ""

    init () {
        chooseWord()
        convertToString()
    }
    
    func chooseWord(){
        word = "hangman"
        for _ in 0 ... word.count - 1{
            wordDisplayArray.append("_")
        }
    }

    func convertToString(){
        wordDisplay = ""
        for i in wordDisplayArray{
            wordDisplay = wordDisplay + String(i)
        }
        wordDisplay = wordDisplay.uppercased()
    }



    func hangmanGame(playerGuess: Character) {


        let wordArray = Array(word)
        var guessed = false
        var guessedLetters : [Character] = []
        var tries = 6


        print("Welcome to the Hangman game!")
        print("Guess this word :")

            convertToString()
            print(wordDisplay)
            print("Please enter a guess :")
            let playerGuess = playerGuess

            if guessedLetters.contains(playerGuess) == true {
                print("You already Guessed that word")

            } else {

                guessedLetters.append(playerGuess)
            var numberOfRecurrence = 0
            for i in 0 ... wordArray.count - 1 {
                if wordArray[i] == playerGuess {
                    print("Hurray we found a \(playerGuess)")
                    wordDisplayArray [i] = playerGuess
                    numberOfRecurrence += 1
                }
            }
            if numberOfRecurrence == 0 {
                print("This letter is not in the word")
                numberOfRecurrence -= 1
            }
                
            if wordArray == wordDisplayArray {
                guessed = true
                }
            if tries == 0 {
                print ("You loose")
                exit(0)
            }
        }
    }

}




