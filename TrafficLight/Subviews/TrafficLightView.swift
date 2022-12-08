//
//  CircleView.swift
//  TrafficLight
//
//  Created by Илья Дубенский on 07.12.2022.
//

import SwiftUI

struct TrafficLightView: View {
    let color: Color
    let opacity: Double

    var body: some View {
        Circle()
            .frame(width: 132, height: 132)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .opacity(opacity)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(color: .red, opacity: 0.3)
    }
}
