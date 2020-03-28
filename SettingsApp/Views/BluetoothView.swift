//
//  BluetoothView.swift
//  SettingsApp
//
//  Created by Alonso on 1/13/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct BluetoothView: View {
    @ObservedObject var bluetooth = Settings()
    
    var body: some View {
        return NavigationLink(destination: ToggleBluetoothView(bluetooth: bluetooth)) {
            HStack() {
                Image("default")
                    .resizable()
                    .cornerRadius(12)
                    .frame(width: 25, height: 25)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                Text("Bluetooth")
                    .foregroundColor(.blue)
                    .font(.system(size: 20))
                    .frame(width: 150,height: 40, alignment: .leading)
                Text($bluetooth.isBluetoothOn.wrappedValue ? "On" : "Off")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                    .font(.subheadline)
                    .frame(width: 170, height: 40, alignment: .trailing)
            }
        }
    }
}
