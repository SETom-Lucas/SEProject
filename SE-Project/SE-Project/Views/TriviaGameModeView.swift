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
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.white,Color("AccentColor")]), startPoint: .topLeading, endPoint: .bottomLeading)
                    .ignoresSafeArea(.all, edges: .all)
                
                VStack(alignment: .center, spacing: 15){
                    
                    Text("FSTM Triva Game")
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(Color("Red"))
                        .opacity(0.98)
                        .padding()
                    
                    Text("Well Played You Have reached the end of the quizz !")
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.white)
                        .padding()
                    
                    Text("You're score is \(data.score) / \(data.length)")
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.white)
                        .padding()
                    
                    Button{
                        data.loading()
                    }label: {
                        MainButton(text:Text("Play Again"),background: Color("Red"))
                    }
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
            .environmentObject(DataLoader())
    }
}
}
