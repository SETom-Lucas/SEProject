//
//  database.swift
//  SE-Project
//
//  Created by Tom Leonard on 28/03/2022.
//

import Foundation


struct Questions : Codable {
    var questionText:String;
    var correctAnswer:Answers;
    var incorrectAnswers:[Answers];
}

struct Answers : Codable {
    var id: Int;
    var awnserText:String;
    var isCorrect:Bool
}

