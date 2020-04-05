//
//  WiFiView.swift
//  SettingsApp
//
//  Created by Alonso on 3/28/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct WiFiView: View {
    @ObservedObject var viewModel = WiFiViewModel()
    
    var body: some View {
        Group() {
            Picker(selection: $viewModel.selection, label: WiFiContainer()) {
                ForEach(WiFiSelection.allCases, id: \.self) {
                    Text($0.rawValue)
                        .font(.system(size: 20.0))
                        .font(.subheadline)
                }
            }
            if viewModel.selection == .on {
                HStack {
                    Text("Searching for network")
                        .foregroundColor(.gray)
                        .font(.system(size: 16.0))
                        .font(.system(.subheadline))
                    ActivityIndicator(style: .medium)
                }
            }
        }
    }
}

struct WiFiContainer: View {
    var body: some View {
        HStack {
            DefaultImage()
            Text("WiFi").foregroundColor(.blue)
                .font(.system(size: 20.0))
                .frame(height: 40.0)
        }
    }
}
