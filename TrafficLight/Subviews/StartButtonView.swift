//
//  StartButtonView.swift
//  TrafficLight
//
//  Created by Илья Дубенский on 07.12.2022.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 3)
        )
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(title: "START", action: {})
    }
}
