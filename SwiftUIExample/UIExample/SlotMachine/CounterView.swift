//
//  CounterView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI


protocol Initiable {
    init()
}

struct CounterView : View, Initiable, PreviewProvider {
    @State var creditCount : Int?
    var body: some View{
        Text("Credits: \(creditCount ?? .zero)")
            .padding(10)
            .background(Color.init(red: 100/255, green: 100/255, blue: 100/255, opacity: 0.17))
            .cornerRadius(10)
    }
}

extension View where Self: Initiable , Self: PreviewProvider{
    static var previews: some View{
        return Self()
    }
}

