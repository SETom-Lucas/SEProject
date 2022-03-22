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
    var percent: CGFloat = 56
    var firstColor = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    var secondColor = Color(hue: 0.1639, saturation: 1, brightness: 1)
    
    
    var body: some View {
        let progress = widht / 100
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: widht, height: height)
                .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: percent * progress, height: height)
                .background(LinearGradient(gradient: Gradient(colors: [firstColor,secondColor]), startPoint: .leading, endPoint: .trailing)
                    .clipShape( RoundedRectangle(cornerRadius: height, style: .continuous)))
                .foregroundColor(.clear)
            
        }
    }
}


struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
