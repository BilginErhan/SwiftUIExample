//
//  SwiftUISlotView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 24.12.2020.
//

import SwiftUI

struct SwiftUISlotView: View {
    //VStack max elemens size 10
    @State private var credits = 1000
    @State private var numbers = [1, 2, 0]
    @State private var backgrounds = [Color.white, Color.white, Color.white]
    @State private var symbols = ["apple", "star", "cherry"]
    private var betAmount = 10
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255
                ))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Spacer()
                //Title
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                //Credit counter
                Text("Credits: \(String(credits))")
                    .foregroundColor(.black)
                    .padding(.all,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
                //Cards
                HStack{
                    Spacer()
                    SlotCardView(symbol: $symbols[numbers[0]],background: $backgrounds[0])
                    SlotCardView(symbol: $symbols[numbers[1]],background: $backgrounds[1])
                    SlotCardView(symbol: $symbols[numbers[2]],background: $backgrounds[2])
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    self.backgrounds = self.backgrounds.map({ _ in
                        Color.white
                    })
                    
                    self.numbers = self.numbers.map({ _ in
                        Int.random(in: 0...symbols.count - 1)
                    })
                    
                    if self.numbers[0] == self.numbers[1] &&
                        self.numbers[1] == self.numbers[2] {
                        self.credits += self.betAmount * 10
                        
                        
                        self.backgrounds = self.backgrounds.map({ _ in
                            Color.green
                        })
                        
                    }else{
                        self.credits -= self.betAmount
                    }
                }, label: {
                    Text("Spin")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                        .cornerRadius(20)
                })
                Spacer()
            }
        }
    }
}

struct SwiftUISlotView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISlotView()
    }
}
