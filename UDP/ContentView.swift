//
//  ContentView.swift
//  UDP
//
//  Created by Ali Aghamirbabaei on 12/11/21.
//arrow.up.circle

import SwiftUI
import Network

struct ContentView: View {
    @State var UDPHost: String = ""
    @State var UDPPort: String = ""
    @State var UDPMessage: String = ""
    var udp = UDP()
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack(alignment: .center, spacing: 30) {
                NeumorphicStyleTextField(textField: TextField("Host...", text: $UDPHost), imageName: "server.rack")
                NeumorphicStyleTextField(textField: TextField("Port...", text: $UDPPort), imageName: "rectangle.portrait.and.arrow.right")
                NeumorphicStyleTextField(textField: TextField("Message...", text: $UDPMessage), imageName: "message")
                
                NeumorphicStyleButton(button:
                    Button {
                    udp.connectToUDP(NWEndpoint.Host(UDPHost), NWEndpoint.Port(UDPPort)!, UDPMessage)
                    } label: {
                        Text("Send")
                            .foregroundColor(.neumorphictextColor)
                    }, imageName: "arrow.up.circle")
                    .padding(30)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
