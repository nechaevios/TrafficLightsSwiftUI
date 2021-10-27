//
//  ColorCircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by Nechaev Sergey  on 27.10.2021.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(opacity))
            .frame(width: 90, height: 90)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .blue, opacity: 1.0)
    }
}
