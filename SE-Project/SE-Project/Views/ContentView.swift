//
//  ContentView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 21/03/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var data = DataLoader();
    var body: some View {
        NavigationView {
            ZStack {
                Color("AccentColor")
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white)
                Circle()
                    .scale(1.2)
                    .foregroundColor(Color("Red"))
                
                VStack(spacing : 30) {
                    Text("Welcome to FSTM QUIZZ")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                    
                    NavigationLink{
                        TriviaGameModeView()
                            .environmentObject(data)
                    }label: {
                        MainButton(text:Text(Image(systemName: "gamecontroller.fill")) + Text(" Trivia Game"))
                    }
                    .navigationTitle("Main menu")
                    .navigationBarHidden(true)
                    
                    NavigationLink{
                        HangmanView()
                    }label: {
                        MainButton(text:Text(Image(systemName: "figure.wave")) + Text(" Hangman"))
                    }

                    NavigationLink{
                        SeeMoreView()
                    }label: {
                        SeeMoreButton(text:Text(Image(systemName: "book.fill")) + Text(" See More"))
                    }

                }
            }
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataLoader())
    }
}
