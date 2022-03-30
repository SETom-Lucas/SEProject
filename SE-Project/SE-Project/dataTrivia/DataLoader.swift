//
//  DataLoader.swift
//  SE-Project
//
//  Created by Tom Leonard on 29/03/2022.


import Foundation

public class DataLoader {
    
    @Published var questionList = [Questions]()
    @Published private(set) var length = 0
    @Published private(set) var index = 0
    @Published var currentQuestion =  DefaultQuestion
    
    
    init(){
        loading()
        //sort() //Future Implementation needed
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
                    dataFromJson.shuffle()
                    
                    self.questionList = dataFromJson
                    self.length = questionList.count
                    
                }
                catch{
                    print(error)
                }
            }
    func selectQuestion() {
        if index < length {
            currentQuestion = questionList[index]
            index = index + 1
        } else {
            print("HAHAH sucks to suck")
            }
    }
}

