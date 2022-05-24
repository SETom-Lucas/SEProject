//
//  GameButton.swift
//  SE-Project
//
//  Created by Lucas Villiere on 24/05/2022.
//

import SwiftUI

struct GameButton: View {
    var nameOfImage : String
    var background: Color = Color("AccentColor")
    var buttonClicked = false
    
    var body: some View {
        
        Image("\(nameOfImage)")
            .resizable()
            .frame(width: 50.0, height: 50.0)
            .foregroundColor(background)
    }
}

struct GameButton_Previews: PreviewProvider {
    static var previews: some View {
        GameButton(nameOfImage: "a.square.fill",background: Color("AccentColor"),buttonClicked: false)
    }
}
