//
//  SliderColorView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 24.12.2020.
//

import SwiftUI

struct SliderColorView: View {
    @Binding var sliderValue: Double
    @State var label: String
    var body: some View {
        VStack{
            Slider(value: $sliderValue, in: 0...255, step: 1)
            Text("\(label) : \(Int(sliderValue))")
        }
    }
}

struct SliderColorView_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorView(sliderValue: Binding.constant(0), label: "Red")
    }
}
