//
//  ColorCircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by Nechaev Sergey  on 27.10.2021.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .blue, opacity: 1.0)
    }
}
