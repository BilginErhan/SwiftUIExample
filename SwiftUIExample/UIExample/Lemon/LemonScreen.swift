//
//  LemonScreen.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI

struct LemonScreen : View {
    var body: some View{
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            LemonView()
            LemonView()
            LemonView()
        })
    }
}

struct LemonScreen_Previews: PreviewProvider {
    static var previews: some View {
        LemonScreen()
    }
}
