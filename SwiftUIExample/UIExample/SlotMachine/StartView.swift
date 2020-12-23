//
//  StartView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI

struct StartView : View {
    var body: some View{
        Image(systemName: "star.fill")
            .foregroundColor(.yellow)
            .aspectRatio(contentMode: .fit)
    }
}


struct StartView_Previews: PreviewProvider {
    static var previews: some View{
        StartView()
    }
}
