//
//  ContentView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 21/03/2022.
//

import SwiftUI

struct ContentView: View {
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
                    .foregroundColor(.red)
                
                VStack(spacing : 25) {
                    Text("Welcome to FSTM QUIZZ")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("Are you ready to play ?")
                        .foregroundColor(.white)
                   
                    NavigationLink{
                        TriviaGameModeView()
                    }label: {
                        MainButton(text:"Press to continue")
                    }
                    Button("Clickme", action:{
                        let data = DataLoader();
                        print(data.userData)
                    })
                    
                    Button("Clickme", action:{
                        let data = DataLoader();
                        let data1 = data.userData.shuffled()
                        print(data1)
                    })
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
