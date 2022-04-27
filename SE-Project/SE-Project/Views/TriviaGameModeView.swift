//
//  TriviaGameModeView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 29/03/2022.
//

import SwiftUI

struct TriviaGameModeView: View {
    @EnvironmentObject var data: DataLoader
    var body: some View {
        if data.reachedEnd == true {
            VStack(alignment: .center, spacing: 20){
                Text("FSTM Triva Game")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding()
                
                Text("Well Played You Have reached the end of the quizz !")
                    .font(.body)
                Text("You're score is \(data.score) / \(data.length)")
                    .font(.body)
                Button{
                    data.loading()
                }label: {
                    MainButton(text: "Play again !")
                }
            }
            
        } else {
            ScrollView{
                QuestionView()
                    .environmentObject(data)
        }
    }
}

struct TriviaGameModeView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaGameModeView()
    }
}
}
