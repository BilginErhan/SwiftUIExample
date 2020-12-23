//
//  HeaderTextView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI

struct HeaderTextView : View {
    @State var text: String
    var body: some View{
        Text(text)
            .font(.system(size: 36, weight: .bold, design: .rounded))
            .lineLimit(1)
    }
}

struct HeaderTextView_Previews: PreviewProvider {
    static var previews: some View{
        HeaderTextView(text: "Some Text")
    }
}
