//
//  LemonView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI


struct LemonView : View {
    var body: some View{
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
            Spacer()
            Image("lemon")
            Spacer()
            Image("lemon")
            Spacer()
            Image("lemon")
            Spacer()
        })
    }
}

struct LemonView_Previews: PreviewProvider {
    static var previews: some View {
        LemonView()
    }
}



