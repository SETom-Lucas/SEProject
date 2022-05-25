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

    func resetButtons() {
        buttonAClicked = false
        buttonBClicked = false
        buttonCClicked = false
        buttonDClicked = false
        buttonEClicked = false
        buttonFClicked = false
        buttonGClicked = false
        buttonHClicked = false
        buttonIClicked = false
        buttonJClicked = false
        buttonKClicked = false
        buttonLClicked = false
        buttonMClicked = false
        buttonNClicked = false
        buttonOClicked = false
        buttonPClicked = false
        buttonQClicked = false
        buttonRClicked = false
        buttonSClicked = false
        buttonTClicked = false
        buttonUClicked = false
        buttonVClicked = false
        buttonWClicked = false
        buttonXClicked = false
        buttonYClicked = false
        buttonZClicked = false
    }
    
   
    
    var color = "AccentColor"
    @StateObject var hangman = Hangman()
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
                    Text("Score : \(hangman.score)")
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
                    
                   
                    Text(hangman.wordDisplay)
                        .fontWeight(.bold)
                        .foregroundColor(Color("AccentColor"))
                        
                }
                VStack(spacing : 20) {
                    //Here we need to change the image
                    HStack(spacing : 0){
                        Image(hangman.currentImage)
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                        .background(Color("AccentColor"))
                    }
                }
                VStack {
                    HStack(spacing : 15){
                        if buttonAClicked == false {
                            Button {
                                hangman.hangmanGame(playerGuess: "a")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "b")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "c")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "d")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "e")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "f")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "g")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "h")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "i")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "j")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "k")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "l")
                                hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "m")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "n")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "o")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "p")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "q")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "r")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "s")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "t")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "u")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "v")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "w")
                                    hangman.convertToString()
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
                                    hangman.hangmanGame(playerGuess: "x")
                                    hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "y")
                                hangman.convertToString()
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
                                hangman.hangmanGame(playerGuess: "z")
                                hangman.convertToString()
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
            .environmentObject(Hangman())
    }
}
