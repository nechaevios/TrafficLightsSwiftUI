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
        Button {
            closure()
        } label: {
            Text(buttonText)
        }
        .frame(width: 110, height: 60)
        .foregroundColor(.white)
        .background(backgroundColor)
        .font(.title)
        .cornerRadius(8)
        .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.white, lineWidth: 3)
        )
        
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonText: "START", backgroundColor: Color.green, closure: {})
    }
}
