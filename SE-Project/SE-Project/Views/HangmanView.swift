//
//  HangmanView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 22/05/2022.
//

import SwiftUI

struct HangmanView: View {
    @State var buttonAClicked = false
    @State var buttonBClicked = false
    @State var buttonCClicked = false
    @State var buttonDClicked = false
    @State var buttonEClicked = false
    @State var buttonFClicked = false
    @State var buttonGClicked = false
    @State var buttonHClicked = false
    @State var buttonIClicked = false
    @State var buttonJClicked = false
    @State var buttonKClicked = false
    @State var buttonLClicked = false
    @State var buttonMClicked = false
    @State var buttonNClicked = false
    @State var buttonOClicked = false
    @State var buttonPClicked = false
    @State var buttonQClicked = false
    @State var buttonRClicked = false
    @State var buttonSClicked = false
    @State var buttonTClicked = false
    @State var buttonUClicked = false
    @State var buttonVClicked = false
    @State var buttonWClicked = false
    @State var buttonXClicked = false
    @State var buttonYClicked = false
    @State var buttonZClicked = false

    var color = "AccentColor"
        var body: some View {
            VStack (spacing : 20){
                    HStack{
                        Text("HANGMAN GAME")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color("Red"))
                            .underline()
                    }
              
                HStack{
                    Text("Score : 2")
                        .foregroundColor(Color("Red"))
                        .fontWeight(.bold)
                        .padding()
                        
                    Spacer()
                    
                    Text("Wrong Letters : 10")
                        .foregroundColor(Color("Red"))
                        .fontWeight(.bold)
                        .padding()
                       
                    }
                VStack{
                    //here we need to change the Letter
                    Text("-----------")
                        .fontWeight(.bold)
                        .foregroundColor(Color("AccentColor"))
                        
                }
                VStack(spacing : 20) {
                    //Here we need to change the image
                    HStack(spacing : 0){
                        Image("hangman10")
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                        .background(Color("AccentColor"))
                    }
                }
                VStack {
                    HStack(spacing : 15){
                        if buttonAClicked == false {
                            Button {
                                print("A")
                                buttonAClicked = true
                                }label: {
                                Image("a.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        } else {
                            Button {
                                }label: {
                                Image("a.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonBClicked == false {
                            Button {
                                print("B")
                                buttonBClicked = true
                                }label: {
                                Image("b.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        } else {
                            Button {
                                }label: {
                                Image("b.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonCClicked == false {
                            Button {
                                print("C")
                                buttonCClicked = true
                                }label: {
                                Image("c.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        else {
                            Button {
                                }label: {
                                Image("c.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonDClicked == false {
                            Button {
                                print("D")
                                buttonDClicked = true
                                }label: {
                                Image("d.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        else  {
                            Button {
                                }label: {
                                Image("d.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonEClicked == false {
                            Button {
                                print("E")
                                buttonEClicked = true
                                }label: {
                                Image("e.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        else  {
                            Button {
                                }label: {
                                Image("e.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonFClicked == false {
                            Button {
                                print("F")
                                buttonFClicked = true
                                }label: {
                                Image("f.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        else {
                            Button {
                                }label: {
                                Image("f.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }

                    }
                    HStack(spacing : 15){
                        if buttonGClicked == false {
                            Button {
                                print("G")
                                buttonGClicked = true
                                }label: {
                                Image("g.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        else {
                            Button {
                                }label: {
                                Image("g.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonHClicked == false {
                            Button {
                                print("H")
                                buttonHClicked = true
                                }label: {
                                Image("h.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        else {
                            Button {
                                }label: {
                                Image("h.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonIClicked == false {
                            Button {
                                print("I")
                                buttonIClicked = true
                                }label: {
                                Image("i.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        else {
                            Button {
                                }label: {
                                Image("i.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonJClicked == false {
                            Button {
                                print("J")
                                buttonJClicked = true
                                }label: {
                                Image("j.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        else {
                            Button {
                                }label: {
                                Image("j.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonKClicked == false {
                            Button {
                                print("K")
                                buttonKClicked = true
                                }label: {
                                Image("k.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        else {
                            Button {
                                }label: {
                                Image("k.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonLClicked == false {
                            Button {
                                print("L")
                                buttonLClicked = true
                                }label: {
                                Image("l.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        else {
                            Button {
                                }label: {
                                Image("l.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                    }
                        HStack(spacing : 15){

                            if buttonMClicked == false {
                                Button {
                                    print("M")
                                    buttonMClicked = true
                                    }label: {
                                    Image("m.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("m.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                            if buttonNClicked == false {
                                Button {
                                    print("N")
                                    buttonNClicked = true
                                    }label: {
                                    Image("n.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("n.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                            if buttonOClicked == false {
                                Button {
                                    print("O")
                                    buttonOClicked = true
                                    }label: {
                                    Image("o.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("o.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                            if buttonPClicked == false {
                                Button {
                                    print("P")
                                    buttonPClicked = true
                                    }label: {
                                    Image("p.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("p.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                            if buttonQClicked == false {
                                Button {
                                    print("Q")
                                    buttonQClicked = true
                                    }label: {
                                    Image("q.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("q.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                            if buttonRClicked == false {
                                Button {
                                    print("R")
                                    buttonRClicked = true
                                    }label: {
                                    Image("r.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("r.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                        }
                        HStack(spacing : 15){
                            if buttonSClicked == false {
                                Button {
                                    print("S")
                                    buttonSClicked = true
                                    }label: {
                                    Image("s.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("s.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                            if buttonTClicked == false {
                                Button {
                                    print("T")
                                    buttonTClicked = true
                                    }label: {
                                    Image("t.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("t.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                            if buttonUClicked == false {
                                Button {
                                    print("U")
                                    buttonUClicked = true
                                    }label: {
                                    Image("u.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("u.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                            if buttonVClicked == false {
                                Button {
                                    print("V")
                                    buttonVClicked = true
                                    }label: {
                                    Image("v.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("v.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                            if buttonWClicked == false {
                                Button {
                                    print("W")
                                    buttonWClicked = true
                                    }label: {
                                    Image("w.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("w.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                            if buttonXClicked == false {
                                Button {
                                    print("X")
                                    buttonXClicked = true
                                    }label: {
                                    Image("x.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
                                Button {
                                    }label: {
                                    Image("x.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("Grey"))
                                        .opacity(0.3)

                                }
                                    .disabled(true)
                            }
                        }
                    HStack(spacing : 15){
                        if buttonYClicked == false {
                            Button {
                                print("Y")
                                buttonYClicked = true
                                }label: {
                                Image("y.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        if buttonYClicked {
                            Button {
                                }label: {
                                Image("y.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)
                        }
                        if buttonZClicked == false {
                            Button {
                                print("Z")
                                buttonZClicked = true
                                }label: {
                                Image("z.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("AccentColor"))
                                }
                        }
                        if buttonZClicked {
                            Button {
                                }label: {
                                Image("z.square.fill")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                                    .foregroundColor(Color("Grey"))
                                    .opacity(0.3)

                            }
                                .disabled(true)

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
