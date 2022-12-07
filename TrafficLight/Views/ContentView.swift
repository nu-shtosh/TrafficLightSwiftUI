//
//  ContentView.swift
//  TrafficLight
//
//  Created by Илья Дубенский on 07.12.2022.
//

import SwiftUI

struct ContentView: View {

    
    @State private var startButtonTitle = "START"

    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3

    @State private var currentLight = CurrentLight.red

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                TrafficLightView(color: .red, opacity: redLightState)
                TrafficLightView(color: .yellow, opacity: yellowLightState)
                TrafficLightView(color: .green, opacity: greenLightState)
                Spacer()
                StartButtonView(title: startButtonTitle) {
                    startButtonTapped()
                }
                .padding()
            }
        }
    }

    private func startButtonTapped() {
        if startButtonTitle == "START" {
            startButtonTitle = "NEXT"
        }

        let lightIsOn = 1.0
        let lightIsOff = 0.3

        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightState = lightIsOff
            redLightState = lightIsOn
        case .yellow:
            currentLight = .green
            redLightState = lightIsOff
            yellowLightState = lightIsOn
        case .green:
            currentLight = .red
            yellowLightState = lightIsOff
            greenLightState = lightIsOn
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private enum CurrentLight {
        case red, yellow, green
    }
}
