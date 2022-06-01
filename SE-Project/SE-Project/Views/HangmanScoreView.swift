//
//  HangmanScoreView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 30/05/2022.
//

import SwiftUI

struct HangmanScoreView: View {
    @StateObject var hangman = Hangman()
    var body: some View {
        //Here we have our score view when we end the HangmanGame
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.white,Color("AccentColor")]), startPoint: .topLeading, endPoint: .bottomLeading)
                    .ignoresSafeArea(.all, edges: .all)
                
                VStack(alignment: .center, spacing: 15){
                    
                    Text("HANGMAN GAME")
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(Color("Red"))
                        .padding()
                    
                    Text("Well Played You Have reached the end of the game !")
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.white)
                        .padding()
                    
                    Text("You're score is \(hangman.score) ")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.white)
                        .padding()
                    
                    
                    Button{
                        hangman.loading()
                    }label: {
                        MainButton(text:Text("Play Again"))
                    }
                }
            }

    }
}

struct HangmanScoreView_Previews: PreviewProvider {
    static var previews: some View {
        HangmanScoreView()
    }
}
