//
//  ToggleView.swift
//  SettingsApp
//
//  Created by Alonso on 4/4/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct ToggleView: View {
    let value: InnerOptionValue
    @ObservedObject var viewModel = ToggleViewModel()
    
    var body: some View {
        HStack {
            Image("default")
                .resizable()
                .cornerRadius(12)
                .frame(width: 25, height: 25)
                .clipped()
                .aspectRatio(contentMode: .fit)
            
            Toggle(isOn: $viewModel.isToggleOn) {
                Text(value.title)
                    .foregroundColor(.blue)
                    .font(.system(size: 18))
            }
        }
    }
}
