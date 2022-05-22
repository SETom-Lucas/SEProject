//
//  DataLoader.swift
//  SE-Project
//
//  Created by Tom Leonard on 29/03/2022.


import Foundation
import SwiftUI
//DataLoader is used to load the the questions in our jason file then parsing them as readable swift code that we can use in the rest of the application.

public class DataLoader : ObservableObject {
    
    @Published var questionList = [Questions]()
    @Published private(set) var length = 0
    @Published private(set) var index = 0
    @Published var currentQuestion = DefaultQuestion
    @Published private(set) var question: String = ""
    @Published private(set) var answerChoices: [Answers] = []
    @Published private(set) var reachedEnd = false
    @Published private(set) var answerSelected = false
    @Published private(set) var score = 0
    @Published private(set) var progress: CGFloat = 0.00
    
    
    init(){
        loading()
    }
        func loading() {
            guard let path = Bundle.main.path(forResource: "data", ofType: "json") else {
                print ("here")
                return
            }
            let url = URL(fileURLWithPath: path )
                do{
                    let data = try Data(contentsOf: url)
                    let jsonDecoder = JSONDecoder()
                    var dataFromJson = try jsonDecoder.decode([Questions].self, from: data)
                    dataFromJson.shuffle() //The questions will be in a different order every time the quizz is played
                                           
                    questionList = dataFromJson // Possibility to add a limit to the amount questions in the quizz if we choose
                    length = questionList.count
                    currentQuestion = questionList[index]
                    currentQuestion.Answers.shuffle()
                    
                    self.index = 0
                    self.score = 0
                    self.progress = 0.00
                    self.reachedEnd = false
                    
                }
                catch{
                    print(error)
                }
            }
    
    //Function to select the next question in the quizz
    func selectQuestion() {
        answerSelected = false
        progress = CGFloat(Double(index + 1) / Double(length) * 350)
        
        if index + 1 < length {
            currentQuestion = questionList[index + 1]
            currentQuestion.Answers.shuffle()
            index = index + 1
            //print(currentQuestion.questionText)
            question = currentQuestion.questionText
            answerChoices = currentQuestion.Answers
        } else {
            reachedEnd = true
            print (score)
            //print("There are no more questions ! the quizz is over")
            }
    }
    
    func selectAnswer(answer : Answers){
        answerSelected = true
        if answer.isCorrect {
            score += 1
        }
    }
}

