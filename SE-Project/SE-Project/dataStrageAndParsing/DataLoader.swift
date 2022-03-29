//
//  DataLoader.swift
//  SE-Project
//
//  Created by Tom Leonard on 29/03/2022.
//

import Foundation

public class DataLoader {
    
    @Published var userData = [Questions]()
    
    init(){
        loading()
        //sort() //Future Implementation needed
    }
        func loading() {
            guard let path = Bundle.main.path(forResource: "data", ofType: "json") else {
                print ("here")
                return
            }
            let url = URL(fileURLWithPath: path )
                do{
                    let data = try Data(contentsOf: url)
                    let jsonDecoder = JSONDecoder()
                    
                    let dataFromJson = try jsonDecoder.decode([Questions].self, from: data)
                    
                    self.userData = dataFromJson
                    
                    
                }
                catch{
                    print(error)
                }
            }
        
    
 
}

