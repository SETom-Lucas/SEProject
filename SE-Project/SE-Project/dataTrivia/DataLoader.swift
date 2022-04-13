//
//  DataLoader.swift
//  SE-Project
//
//  Created by Tom Leonard on 29/03/2022.


import Foundation

//DataLoader is used to load the the questions in our jason file then parsing them as readable swift code that we can use in the rest of the application.

public class DataLoader {
    
    @Published var questionList = [Questions]()
    @Published private(set) var length = 0
    @Published private(set) var index = 0
    @Published var currentQuestion = DefaultQuestion
    
    
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
                                           
                    self.questionList = dataFromJson // Possibility to add a limit to the amount questions in the quizz if we choose
                    self.length = questionList.count
                    
                }
                catch{
                    print(error)
                }
            }
    
    //Function to select the next question in the quizz
    func selectQuestion() {
        if index < length {
            currentQuestion = questionList[index]
            index = index + 1
        } else {
            print("There are no more questions ! the quizz is over")
            }
    }
}

