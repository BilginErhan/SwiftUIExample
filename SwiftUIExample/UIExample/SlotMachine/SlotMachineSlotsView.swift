//
//  SlotMachineSlotsView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI

struct ImagesStruct {
    var images:[Image]
}

extension ImagesStruct{
    init(_ values : [Images]) {
        var images:[Image] = []
        for value in values {
            images.append(value.rawImage)
        }
        self.images = images
    }
}

struct SlotMachineSlotsView: View {
    @State var imageStruct: ImagesStruct
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {

            SlotMachineImageView(image: imageStruct.images[0])
            SlotMachineImageView(image: imageStruct.images[1])
            SlotMachineImageView(image: imageStruct.images[2])
        })
    }
}

struct SlotMachineSlotsView_Previews: PreviewProvider {
    static var previews: some View {
        SlotMachineSlotsView(imageStruct: ImagesStruct([.STAR,.STAR,.STAR]))
    }
}
