//
//  SFSymbolView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI


struct SFSymbolView: View {
    var body: some View{
        HStack(alignment: .center, spacing: 10, content: {
            Image(systemName: "heart")
            Text("Like")
            Image(systemName: "mic.circle.fill")
        })
    }
}

struct SFSymbolView_Previews: PreviewProvider {
    static var previews: some View{
        SFSymbolView()
    }
}
