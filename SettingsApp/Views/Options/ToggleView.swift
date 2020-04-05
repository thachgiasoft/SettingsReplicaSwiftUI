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
            DefaultImage()
            Toggle(isOn: $viewModel.isToggleOn) {
                Text(value.title)
                    .modifier(LabelModifier(type: .primary))
            }
        }
    }
}
