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
            
            VStack(alignment: .center, spacing: 25) {
                Text(data.currentQuestion.questionText)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color("AccentColor"))
                    .fixedSize(horizontal: false, vertical: true)
                
                if data.currentQuestion.img != nil {
                    Image(data.currentQuestion.img!)
                }
                
                ForEach(data.currentQuestion.Answers, id: \.id) { anwser in
                    AnswersUI(answer: anwser)
                        .environmentObject(data)
                }
                
            }
            
            Button {
                data.selectQuestion()
            }label: {
                MainButton(text: "Next question")
            }
            .disabled(!data.answerSelected)

            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        //.background(Color("White"))
        }
}
            

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
