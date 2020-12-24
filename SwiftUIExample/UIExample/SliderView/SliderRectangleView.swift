//
//  SliderRectangleView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 24.12.2020.
//

import SwiftUI

struct SliderRectangleView: View {
    
    @State var frameWidth: CGFloat
    @State var frameHeight: CGFloat
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    
    var body: some View {
        Rectangle()
            .frame(width: frameWidth, height: frameHeight)
            .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
            .border(Color.black,width: 1)
    }
}

struct SliderRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        SliderRectangleView(frameWidth: 100, frameHeight: 100, red: Binding.constant(0), green: Binding.constant(0), blue: Binding.constant(0))
    }
}
