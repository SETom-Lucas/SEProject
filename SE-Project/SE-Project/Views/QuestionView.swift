//
//  QuestionView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 22/03/2022.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var data : DataLoader
    
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Questions Game")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("Red"))
                Spacer()
                
                Text("\(data.index + 1) out of \(data.length)")
                    .fontWeight(.heavy)
                    .foregroundColor(Color("Red"))
            }
            ProgressBar(percent: data.progress)
            
            //Here insert our question from the json file
            VStack(alignment: .center, spacing: 25) {
                Text(data.currentQuestion.questionText)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color("AccentColor"))
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                //Here we check if we have an image in our json file
                if data.currentQuestion.img != nil {
                    Image(data.currentQuestion.img!)
                }
                
                //Here we insert the possible answers from our json file
                ForEach(data.currentQuestion.Answers, id: \.id) { answer in
                    AnswersUI(answer: answer)
                        .environmentObject(data)
                }
                
            }
            //Here we have a button to go to the next question
            Button {
                data.selectQuestion()
            }label: {
                MainButton(text:Text( "Next question"), background: data.answerSelected ? Color("AccentColor") :Color("Grey"))
            }
            .disabled(!data.answerSelected)

            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
}
            

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(DataLoader())
    }
}
