//
//  HangmanView.swift
//  SE-Project
//
//  Created by Lucas Villiere on 22/05/2022.
//

import SwiftUI

struct HangmanView: View {
    var color = "AccentColor"
    @StateObject var hangman = Hangman()
    @State var showAlert = false
    
        var body: some View {
            if hangman.end {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.white,Color("AccentColor")]), startPoint: .topLeading, endPoint: .bottomLeading)
                        .ignoresSafeArea(.all, edges: .all)
                    
                    VStack(alignment: .center, spacing: 15){
                        
                        Text("HANGMAN GAME")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(Color("Red"))
                            .padding()
                        
                        Text("Well Played You Have reached the end of the game !")
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(.white)
                            .padding()
                        
                        Text("You're score is \(hangman.score) ")
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(.white)
                            .padding()
                        
                        
                        Button{
                            hangman.loading()
                        }label: {
                            MainButton(text:Text("Play Again"))
                        }
                    }
                }
            } else {
                VStack (spacing : 20){
                    if hangman.end == true {
                            
                    }
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
                        
                        Text("Wrong Letters : \(hangman.tries)")
                            .foregroundColor(Color("Red"))
                            .fontWeight(.bold)
                            .padding()
                           
                        }
                    
                    HStack(spacing :15){
                        Text(hangman.wordDisplay)
                            .fontWeight(.bold)
                            .foregroundColor(Color("AccentColor"))
                        
                        Button{
                            showAlert = true
                            }label: {
                            Image("info.circle.fill")
                                .resizable()
                                .frame(width: 20.0, height: 20.0)
                                .foregroundColor(Color("AccentColor"))
                                

                        }
                
                         .alert(isPresented:$showAlert) {
                             Alert(
                                 title: Text("HINT"),
                                 message: Text(hangman.word.hint),
                                 dismissButton: .default(Text("Got it!"))
                             )
                         }

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
                            if !hangman.guessedLetters.contains("a") {
                                Button {
                                    hangman.hangmanGame(playerGuess: "a")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("b") {
                                Button {
                                    hangman.hangmanGame(playerGuess: "b")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("c") {
                                Button {
                                    hangman.hangmanGame(playerGuess: "c")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("d"){
                                Button {
                                    hangman.hangmanGame(playerGuess: "d")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("e") {
                                Button {
                                    hangman.hangmanGame(playerGuess: "e")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("f"){
                                Button {
                                    hangman.hangmanGame(playerGuess: "f")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("g") {
                                Button {
                                    hangman.hangmanGame(playerGuess: "g")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("h") {
                                Button {
                                    hangman.hangmanGame(playerGuess: "h")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("i") {
                                Button {
                                    hangman.hangmanGame(playerGuess: "i")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("j") {
                                Button {
                                    hangman.hangmanGame(playerGuess: "j")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("k"){
                                Button {
                                    hangman.hangmanGame(playerGuess: "k")
                                    hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("l"){
                                Button {
                                    hangman.hangmanGame(playerGuess: "l")
                                    hangman.convertToString()
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

                                if !hangman.guessedLetters.contains("m"){
                                    Button {
                                        hangman.hangmanGame(playerGuess: "m")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("n") {
                                    Button {
                                        hangman.hangmanGame(playerGuess: "n")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("o") {
                                    Button {
                                        hangman.hangmanGame(playerGuess: "o")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("p") {
                                    Button {
                                        hangman.hangmanGame(playerGuess: "p")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("q"){
                                    Button {
                                        hangman.hangmanGame(playerGuess: "q")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("r") {
                                    Button {
                                        hangman.hangmanGame(playerGuess: "r")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("s") {
                                    Button {
                                        hangman.hangmanGame(playerGuess: "s")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("t") {
                                    Button {
                                        hangman.hangmanGame(playerGuess: "t")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("u") {
                                    Button {
                                        hangman.hangmanGame(playerGuess: "u")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("v") {
                                    Button {
                                        hangman.hangmanGame(playerGuess: "v")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("w") {
                                    Button {
                                        hangman.hangmanGame(playerGuess: "w")
                                        hangman.convertToString()
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
                                if !hangman.guessedLetters.contains("x") {
                                    Button {
                                        hangman.hangmanGame(playerGuess: "x")
                                        hangman.convertToString()
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
                            if !hangman.guessedLetters.contains("y") {
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
                            else {
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
                            if !hangman.guessedLetters.contains("z") {
                                Button {
                                    hangman.hangmanGame(playerGuess: "z")
                                    hangman.convertToString()
                                    }label: {
                                    Image("z.square.fill")
                                        .resizable()
                                        .frame(width: 50.0, height: 50.0)
                                        .foregroundColor(Color("AccentColor"))
                                    }
                            }
                            else {
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
    }



struct HangmanView_Previews: PreviewProvider {
    static var previews: some View {
        HangmanView()
            .environmentObject(Hangman())
    }
}
