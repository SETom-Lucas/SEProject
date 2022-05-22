//
//  SeeMoreView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 29/03/2022.
//

import SwiftUI

struct SeeMoreView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.white,Color("AccentColor")]), startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 58) {
                VStack(spacing : 25) {
                    Text("Check news of UniLu :")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                    
                    HStack(spacing : 60) {
                        Link(destination: URL(string: "https://www.instagram.com/uni.lu/")!)
                        {
                            Image("Instagram")
                                .resizable()
                                .frame(width: 64.0, height: 64.0)
                                .font(.largeTitle)
                    
                        }
                        Link(destination: URL(string: "https://wwwen.uni.lu/")!)
                        {
                            Image("UniLu")
                                .resizable()
                                .frame(width: 64.0, height: 64.0)
                                .font(.largeTitle)
                        }
              
                        Link(destination: URL(string: "https://twitter.com/uni_lu")!)
                        {
                            Image("Twitter")
                                .resizable()
                                .frame(width: 64, height: 64)
                                .font(.largeTitle)
                        }
                        
                    }
                }
                
                VStack(spacing :25) {
                    Text("Follow Lucas on :")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
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
                        
                    }
                }
                    
                VStack(spacing :25){
                    Text("Follow Tom on :")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                        
                    HStack(spacing : 60) {
                            Link(destination: URL(string: "https://www.instagram.com/tombleonard/")!)
                            {
                                Image("Instagram")
                                    .resizable()
                                    .frame(width: 64.0, height: 64.0)
                                    .font(.largeTitle)
                            }
                  
                            Link(destination: URL(string: "https://github.com/leonard-tom")!)
                            {
                                Image("Github")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                    .font(.largeTitle)
                            }
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
