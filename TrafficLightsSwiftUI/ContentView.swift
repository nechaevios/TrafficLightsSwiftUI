//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Nechaev Sergey  on 27.10.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green, start
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.start
    @State private var buttonText = "START"
    
    private func changeLight() -> Void {
        switch currentLight {
        case .start: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                ColorCircleView(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                ColorCircleView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                ColorCircleView(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                
                Spacer()
                
                ButtonView(buttonText: buttonText, backgroundColor: .blue) {
                    if buttonText == "START" {
                        buttonText = "NEXT"
                    }
                    changeLight()
                }
                
            }
            .padding()
           
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

