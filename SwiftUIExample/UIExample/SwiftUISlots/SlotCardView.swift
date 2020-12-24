//
//  SlotCardView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 24.12.2020.
//

import SwiftUI

struct SlotCardView: View {
    @Binding var symbol : String
    @Binding var background : Color
    var body: some View {
        Image(symbol)
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .background(background)
            .cornerRadius(20)
    }
}

struct SlotCardView_Previews: PreviewProvider {
    static var previews: some View {
        SlotCardView(symbol: Binding.constant("apple"),background: Binding.constant(Color.white))
    }
}
