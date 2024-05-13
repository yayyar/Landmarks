//
//  CircleImage.swift
//  Landmarks
//
//  Created by winlwinoo on 12/05/2024.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(.white)
            }.shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image(/*@START_MENU_TOKEN@*/"turtlerock"/*@END_MENU_TOKEN@*/))
}
