//
//  ContentView.swift
//  SettingsApp
//
//  Created by Alonso on 1/13/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                   SignInView()
                }
                Section {
                    BluetoothView()
                    WiFiView()
                }
            }.navigationBarTitle(Text("Settings"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
