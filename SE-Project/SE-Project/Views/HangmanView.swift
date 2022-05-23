//
//  HangmanView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 22/05/2022.
//

import SwiftUI

struct HangmanView: View {
    var buttonClicked = false
    var color = "AccentColor"
        var body: some View {
            VStack (spacing : 50){
                VStack(spacing : 20) {
                    HStack(spacing : 0){
                        Image("hangman10")
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                        .background(Color("AccentColor"))
                    }
                }
                VStack {
                    HStack(spacing : 15){
                        Button {
                            print("A")
                            
                            }label: {
                            Image("a.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        Button {
                            print("B")
                            
                            }label: {
                            Image("b.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        Button {
                            print("C")
                            
                            }label: {
                            Image("c.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        Button {
                            print("D")
                            
                            }label: {
                            Image("d.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        Button {
                            print("E")
                            
                            }label: {
                            Image("e.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        Button {
                            print("F")
                            
                            }label: {
                            Image("f.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        
                    }
                    HStack(spacing : 15){
                        Button {
                            print("G")
                            
                            }label: {
                            Image("g.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        Button {
                            print("H")
                            
                            }label: {
                            Image("h.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        Button {
                            print("I")
                            
                            }label: {
                            Image("i.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        Button {
                            print("J")
                            
                            }label: {
                            Image("j.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        Button {
                            print("K")
                            
                            }label: {
                            Image("k.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                        Button {
                            print("L")
                            
                            }label: {
                            Image("l.square.fill")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color("AccentColor"))
                        }
                    }
                        HStack(spacing : 15){
                            
                            Button {
                                print("M")
                                
                                }label: {
                                Image("m.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("N")
                                
                                }label: {
                                Image("n.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("O")
                        
                                }label: {
                                Image("o.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("P")
                                
                                }label: {
                                Image("p.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("Q")
                                
                                }label: {
                                Image("q.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("R")
                                
                                }label: {
                                Image("r.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                        }
                        HStack(spacing : 15){
                           
                            Button {
                                print("S")
                                
                                }label: {
                                Image("s.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("T")
                                
                                }label: {
                                Image("t.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("U")
                                
                                }label: {
                                Image("u.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("V")
                                
                                }label: {
                                Image("v.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("W")
                                
                                }label: {
                                Image("w.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("X")
                                
                                }label: {
                                Image("x.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                        }
                        HStack(spacing : 15){

                            Button {
                                print("Y")
                                
                                }label: {
                                Image("y.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                            Button {
                                print("Z")
                                
                                }label: {
                                Image("z.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                            }
                        }
                
       
                }
            }
 
    }
}

struct HangmanView_Previews: PreviewProvider {
    static var previews: some View {
        HangmanView()
    }
}
