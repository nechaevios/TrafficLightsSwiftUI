//
//  ButtonView.swift
//  TrafficLightsSwiftUI
//
//  Created by Nechaev Sergey  on 27.10.2021.
//

import SwiftUI

struct ButtonView: View {
    let buttonText: String
    let backgroundColor: Color
    let closure: () -> Void
    
    var body: some View {
        Button(action: closure) {
            Text(buttonText)
        }
        .frame(width: 170, height: 50)
        .foregroundColor(.white)
        .background(backgroundColor)
        .font(.title)
        .cornerRadius(16)
        .overlay(RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.white, lineWidth: 3)
        )
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonText: "START", backgroundColor: Color.green, closure: {})
    }
}
