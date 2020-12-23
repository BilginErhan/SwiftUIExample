//
//  SlotMachineView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI

struct SlotMachineView: View {
    var body: some View{
        ZStack( content: {
            SlotMachineBackground()
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                SlotMachineHeaderView()
                    .padding(.top,10)
                Spacer()
                CounterView()
                Spacer()
                SlotMachineSlotsView(imageStruct: ImagesStruct([.STAR,.STAR,.STAR]))
                Spacer()
                SlotMachineButtonView()
                Spacer()
            })
        })
    }
}

struct SlotMachineView_Previews: PreviewProvider {    
    static var previews: some View{
        SlotMachineView()
    }
}
