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
    @Published var imageList = ["hangman0", "hangman1", "hangman2", "hangman3", "hangman4", "hangman5", "hangman6", "hangman7", "hangman8", "hangman9", "hangman10"]
    @Published var currentImage = ""
    @Published var wordList = ["volkermuller", "binfo", "fstm", "rothkugel", "medicine", "science", "faculty", ""]
    @Published var score = 0
    
    var readyNext = false
    var tries = 0
    var currentWord = 0

    init () {
        chooseWord(int : currentWord)
        convertToString()
    }
    
    func chooseWord(int : Int){
        word = wordList[int]
        print(word)
        wordDisplay = ""
        wordDisplayArray = []
        for _ in 0 ... word.count - 1{
            wordDisplayArray.append("_")
        }
        currentImage = imageList [0]
    }
    
    func chooseNextWord (){
        tries = 0
        if currentWord < wordList.count - 1 {
            currentWord += 1
            chooseWord(int: currentWord)
        } else {
            
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
        var guessedLetters : [Character] = []
        


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
                tries += 1
                currentImage = imageList[tries]
            }
                
            if wordArray == wordDisplayArray {
                score += 1
                readyNext = true
                chooseNextWord()
                
                }
                
            if tries == 10 {
                readyNext = true
            }
        }
    }
}




