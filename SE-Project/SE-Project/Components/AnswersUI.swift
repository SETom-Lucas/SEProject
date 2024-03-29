//
//  AnswersUI.swift
//  SE-Project
//
//  Created by Lucas Villiere on 28/03/2022.
//

import SwiftUI

struct AnswersUI: View {
    
    @EnvironmentObject var data : DataLoader
  
    var answer: Answers
    //Create a state that implement an action when the user select an answer.
    @State var isSelected = false
    var green = Color(hue: 0.3417, saturation: 0.9, brightness: 0.8)
    var red = Color(hue: 0, saturation: 0.94, brightness: 0.89)
    
    var body: some View {
        HStack(spacing: 20){
            //Selecting an Image from the "SF Symbols" software.
            Image(systemName: "circle.hexagongrid.fill")
                .font(.system(size: 15))
        
            Text(answer.text)
                .bold()
                .fixedSize(horizontal: false, vertical: true)
            
            if data.answerSelected {
                Spacer()
                
                Image(systemName: answer.isCorrect ? "checkmark.seal.fill" : "xmark.seal.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        //Changing the color of the others answers when the user select an answer.
        .foregroundColor(data.answerSelected ?  Color("Grey") : Color("AccentColor"))
        .background(.white)
        .cornerRadius(25)
        //Changing the color of the shadows when the answer is true/false.
        .shadow(color: data.answerSelected ? (answer.isCorrect ? green : red) : .gray, radius: 8, x: 0.5, y: 0.5)

        
        
        
        .onTapGesture() {
            
            if !data.answerSelected {
                isSelected.toggle()
                data.selectAnswer(answer: answer)
            }
           
        }
    }
}

struct AnswersUI_Previews: PreviewProvider {
    static var previews: some View {
        AnswersUI(answer: Answers(text: "Hello this is an answer", isCorrect: false))
            .environmentObject(DataLoader())
    }
}
