//
//  SeeMoreButton.swift
//  SE-Project
//
//  Created by Lucas Villiere on 29/03/2022.
//

import SwiftUI

struct SeeMoreButton: View {
    var text : Text
    var background: Color = Color("AccentColor")
    
    var body: some View {
        text
            .foregroundColor(.white)
            .padding(10)
            //.padding(.horizontal)
            .background(background)
            .cornerRadius(10)
            .shadow(radius: 10)
          
    }
}


struct SeeMoreButton_Previews: PreviewProvider {
    static var previews: some View {
        SeeMoreButton(text:Text(Image(systemName: "book.fill")) + Text(" See More"))
            .environmentObject(DataLoader())
    }
}
