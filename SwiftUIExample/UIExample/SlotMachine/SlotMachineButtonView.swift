//
//  SlotMachineButtonView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI

struct SlotMachineButtonView: View {
    var body: some View {
        Text("Spin")
            .padding(10)
            .background(Color.init(UIColor.init(red: 1, green: 100/255, blue: 100/255, alpha: 1)))
            .foregroundColor(.white)
            .font(.system(size: 24, weight: .bold, design: .rounded))
            .cornerRadius(10)
            .onTapGesture(perform:tapGesture)
    }
    
    func tapGesture() {
        print(#function)
    }
}

struct SlotMachineButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SlotMachineButtonView()
    }
}
