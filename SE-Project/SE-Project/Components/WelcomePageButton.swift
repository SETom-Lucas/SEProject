//
//  WelcomePageButton.swift
//  SE-Project
//
//  Created by Lucas Villiere on 21/03/2022.
//

import SwiftUI

struct WelcomePageButton: View {
    var text : String
    var background: Color = Color("AccentColor")
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(25)
            .shadow(radius: 10)
    }
}

struct WelcomePageButton_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePageButton(text: "Press to continue")
    }
}

