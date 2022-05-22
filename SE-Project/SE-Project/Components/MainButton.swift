//
//  WelcomePageButton.swift
//  SE-Project
//
//  Created by Lucas Villiere on 21/03/2022.
//

import SwiftUI

struct MainButton: View {
    var text : Text
    var background: Color = Color("AccentColor")
    
    var body: some View {
        text
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(25)
            .shadow(radius: 10)
          
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(text:Text("Press to continue"))
    }
}

