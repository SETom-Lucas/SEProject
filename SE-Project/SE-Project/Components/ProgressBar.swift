//
//  ProgressBar.swift
//  SE-Project
//
//  Created by Lucas Villiere on 22/03/2022.
//

import SwiftUI

struct ProgressBar: View {
    
    var widht: CGFloat = 350
    var height: CGFloat = 20
    var percent: CGFloat
    var firstColor = Color("DarkBlue")
    var secondColor = Color("AccentColor")
    
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: widht, height: height)
                .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: percent, height: height)
                .background(LinearGradient(gradient: Gradient(colors: [firstColor,secondColor]), startPoint: .leading, endPoint: .trailing)
                    .clipShape( RoundedRectangle(cornerRadius: height, style: .continuous)))
                .foregroundColor(.clear)
            
        }
    }
}


struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(percent: 50)
            .environmentObject(DataLoader())
    }
}
