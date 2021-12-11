//
//  NeumorphicStyleButton.swift
//  UDP
//
//  Created by Ali Aghamirbabaei on 12/11/21.
//

import SwiftUI

struct NeumorphicStyleButton: View {
    var button: Button<Text>
    var imageName: String
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.darkShadow)
            button
            }
            .padding(20)
            .foregroundColor(.neumorphictextColor)
            .background(Color.background)
            .cornerRadius(6)
            .shadow(color: Color.darkShadow, radius: 3, x: 2, y: 2)
            .shadow(color: Color.lightShadow, radius: 3, x: -2, y: -2)
            
        }
}

