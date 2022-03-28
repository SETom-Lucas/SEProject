//
//  Answers.swift
//  SE-Project
//
//  Created by Lucas Villiere on 23/03/2022.
//

import Foundation

//Each answer can be unically identify by an ID thanks to Identifiable.
struct Answer: Identifiable {
    //Random id generator from Swift.
    var id = UUID()
    var text : AttributedString
    var isCorrect: Bool
}
