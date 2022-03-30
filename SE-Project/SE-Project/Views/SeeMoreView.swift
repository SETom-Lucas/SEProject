//
//  SeeMoreView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 29/03/2022.
//

import SwiftUI

struct SeeMoreView: View {
    var body: some View {
        VStack {
            
            Text("Follow Lucas on :")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .padding()
            VStack(spacing : 50) {
                HStack(spacing : 60) {
                    Link(destination: URL(string: "https://www.instagram.com/lucas.villiere/")!)
                    {
                        Image("Instagram")
                            .resizable()
                            .frame(width: 64.0, height: 64.0)
                            .font(.largeTitle)
                    }
          
                    Link(destination: URL(string: "https://github.com/Villiere-Lucas")!)
                    {
                        Image("Github")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .font(.largeTitle)
                    }
                    
                    Image("Outlook")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .font(.largeTitle)
                }
                
                VStack {
                    Text("Follow Tom on :")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.blue)
                        .padding()
                    
                    HStack(spacing : 60) {
                        Link(destination: URL(string: "https://www.instagram.com/lucas.villiere/")!)
                        {
                            Image("Instagram")
                                .resizable()
                                .frame(width: 64.0, height: 64.0)
                                .font(.largeTitle)
                        }
              
                        Link(destination: URL(string: "https://github.com/Villiere-Lucas")!)
                        {
                            Image("Github")
                                .resizable()
                                .frame(width: 64, height: 64)
                                .font(.largeTitle)
                        }
                        
                        Image("Outlook")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

struct SeeMoreView_Previews: PreviewProvider {
    static var previews: some View {
        SeeMoreView()
    }
}
