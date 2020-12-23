//
//  SlotMachineHeaderView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI

struct SlotMachineHeaderView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20, content: {
            StartView()
            HeaderTextView(text: "SwiftUI Slots!")
            StartView()
        })
    }
}

struct SlotMachineHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SlotMachineHeaderView()
    }
}
