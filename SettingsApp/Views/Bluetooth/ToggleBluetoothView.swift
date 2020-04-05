//
//  ToggleBluetoothView.swift
//  SettingsApp
//
//  Created by Alonso on 2/9/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct ToggleBluetoothView: View {
    @ObservedObject var bluetooth: BlueToothViewModel
    
    var body: some View {
        Form {
            Section(header: Text("ENABLE TO CONNECT WITH NEARBY DEVICES")) {
                Toggle(isOn: $bluetooth.isBluetoothOn) {
                    Text("Bluetooth")
                }
                if bluetooth.isBluetoothOn {
                    HStack {
                        Text("Searching for nearby devices")
                            .modifier(LabelModifier(type: .subheadlineMedium))
                        ActivityIndicator(style: .large)
                    }
                }
            }
        }
    }
}
