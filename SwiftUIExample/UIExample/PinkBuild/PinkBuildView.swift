//
//  PinkBuildView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI



struct PinkBuilView: View {
    
    @State private var isHearted = false
    @State private var numHearts = 9999
    
    var body: some View{
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
            Spacer()
            Image("Breakfast")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40)
                //.cornerRadius(10) not working after padding
                .shadow(radius: 10)
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                Button(action: {
                    isHearted.toggle()
                    if isHearted {
                        numHearts += 1
                    } else {
                        numHearts -= 1
                    }
                }, label: {
                    Image(systemName: isHearted ? "heart.fill" : "heart")
                })
                
                Text(String(numHearts))
            })
            
            Text("Breakfast")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .font(.largeTitle)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            Spacer()
        })
    }
}

struct PinkBuildView_Previews : PreviewProvider {
    static var previews: some View{
        PinkBuilView()
    }
}
