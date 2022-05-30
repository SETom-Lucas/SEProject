//
//  Hangman.swift
//  SE-Project
//
//  Created by Lucas Villiere on 24/05/2022.
//

import Foundation
import SwiftUI

public class Hangman : ObservableObject {
    @Published var word = Words(word: "", hint: "")
    @Published var wordDisplayArray : [Character] = []
    @Published var wordDisplay = ""
    @Published var imageList = ["hangman0", "hangman1", "hangman2", "hangman3", "hangman4", "hangman5", "hangman6", "hangman7", "hangman8", "hangman9", "hangman10"]
    @Published var currentImage = ""
    @Published var wordList : [Words] = []
    @Published var score = 0
    @Published var guessedLetters : [Character] = []
    
    
    var readyNext = false
    var tries = 0
    var currentWord = 0
    
    init () {
        loading()
    }
    
    func loading () {
        guard let path = Bundle.main.path(forResource: "HangmanDatabase", ofType: "json") else {
            print ("here")
            return
        }
        let url = URL(fileURLWithPath: path )
            do{
                let data = try Data(contentsOf: url)
                let jsonDecoder = JSONDecoder()
                var dataFromJson = try jsonDecoder.decode([Words].self, from: data)
                dataFromJson.shuffle() //The questions will be in a different order every time the quizz is played
                
                wordList = dataFromJson
                chooseWord(int: currentWord)
                convertToString()
                
                
            }
            catch{
                print(error)
            }
    }
    
    func chooseWord(int : Int){
        word = wordList[int]
        wordDisplay = ""
        wordDisplayArray = []
        guessedLetters = []
        for _ in 0 ... word.word.count - 1{
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
            wordDisplay = wordDisplay + " " + String(i)
            
        }
        wordDisplay = wordDisplay.uppercased()
        
    }



    func hangmanGame(playerGuess: Character) {


        let wordArray = Array(word.word)

            convertToString()
            let playerGuess = playerGuess
            var numberOfRecurrence = 0
        
            if !guessedLetters.contains(playerGuess) {
                guessedLetters.append(playerGuess)
                
                for i in 0 ... wordArray.count - 1 {
                    if wordArray[i] == playerGuess {
                        wordDisplayArray [i] = playerGuess
                        numberOfRecurrence += 1
                    }
                }
            }
                
            if numberOfRecurrence == 0 {
                numberOfRecurrence -= 1
                tries += 1
                currentImage = imageList[tries]
            }
                
            if wordArray == wordDisplayArray {
                score += 1
                chooseNextWord()
            }
                
            if tries == 10 {
                readyNext = true
                //add exit to victory screen
            }
        }
    }





