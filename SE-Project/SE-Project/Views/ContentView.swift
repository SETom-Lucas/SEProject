//
//  ContentView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 21/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
                
                Button("Click me", action: {
                    let data = DataLoader().userData
                    print(data)
                })
                
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
