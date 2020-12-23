//
//  SlotMachineImageView.swift
//  SwiftUIExample
//
//  Created by Erhan Bilgin on 23.12.2020.
//

import SwiftUI

enum Images: String {
    case STAR = "star.fill"
}

extension Images{
    var rawImage : Image {
        return Image(systemName: self.rawValue)
    }
}

struct SlotMachineImageView: View {
    var image : Image
    var body: some View {
        image
            .padding(10)
            .background(Color.init(UIColor.init(red: 100/255, green: 100/255, blue: 100/255, alpha: 0.17)))
            .cornerRadius(10)
    }
}

struct SlotMachineImageView_Previews: PreviewProvider {
    static var previews: some View {
        SlotMachineImageView(image: Images.STAR.rawImage)
    }
}
