//
//  SliderView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 24.12.2020.
//

import SwiftUI

struct SliderView: View {
    @State private var red : Double = 0
    @State private var green : Double = 0
    @State private var blue : Double = 0
    var body: some View {
        VStack{
            
            SliderRectangleView(frameWidth: 100, frameHeight: 100, red: $red, green: $green, blue: $blue)
            
            SliderColorView(sliderValue: $red, label: "Red")
            
            SliderColorView(sliderValue: $green, label: "Green")
            
            SliderColorView(sliderValue: $blue, label: "Blue")
        }.padding(.all,20)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
