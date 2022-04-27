
//  database.swift
//  SE-Project
//
//  Created by Tom Leonard on 28/03/2022.

//This file contains the structures used for parsing our Json file into swift
import Foundation
import SwiftUI

//As not all of our questions contain images we set it as an optional variable.
struct Questions : Codable {
    var questionText:String
    var img:String?
    var Answers:[Answers]
}

//Use of a default question for initializing our list of questions
var DefaultQuestion = Questions(questionText: "", img:"Default", Answers: [])

struct Answers : Codable {
    var id : UUID {
        UUID()
    }
    var text : String
    var isCorrect :Bool

}

