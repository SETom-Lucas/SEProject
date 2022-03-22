//
//  QuestionView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 22/03/2022.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Questions Game")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("AccentColor"))
                Spacer()
                
                Text("1 out of ...")
                    .fontWeight(.heavy)
                    .foregroundColor(Color("AccentColor"))
            }
            ProgressBar(widht: 350, height: 20, percent: 66, firstColor: Color("DarkBlue"), secondColor: Color("AccentColor"))
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Hello I'm a SIMPLE test example I'm useless...")
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(Color("DarkBlue"))
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
