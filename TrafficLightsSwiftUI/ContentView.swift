//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Nechaev Sergey  on 27.10.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    
    @State private var buttonText = "START"
    
    private var nextButton: some View {
        ButtonView(buttonText: buttonText, backgroundColor: .blue) {
            changeLight()
        }
    }
    
    private var trafficLights: some View {
        VStack {
            ColorCircleView(color: .red, opacity: redLightOpacity)
                .padding(.bottom)
            ColorCircleView(color: .yellow, opacity: yellowLightOpacity)
                .padding(.bottom)
            ColorCircleView(color: .green, opacity: greenLightOpacity)
                .padding(.bottom)
            Spacer()
            nextButton
        }
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            trafficLights
            .padding()
        }
    }
    
    private func changeLight() -> Void {
        if buttonText == "START" {
            buttonText = "NEXT"
        }
        
        switch currentLight {
        case .red:
            redLightOpacity = lightIsOn
            yellowLightOpacity = lightIsOff
            greenLightOpacity = lightIsOff
            currentLight = .yellow
        case .yellow:
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOn
            greenLightOpacity = lightIsOff
            currentLight = .green
        case .green:
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOff
            greenLightOpacity = lightIsOn
            currentLight = .red
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

