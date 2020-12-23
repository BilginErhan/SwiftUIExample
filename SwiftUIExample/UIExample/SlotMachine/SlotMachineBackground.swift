//
//  SlotMachineBackground.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI

struct SlotMachineBackground: View {
    var body: some View {
        LinearGradient(gradient: .init(colors: [.black,.blue,.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct SlotMachineBackground_Previews: PreviewProvider {
    static var previews: some View {
        SlotMachineBackground()
    }
}
