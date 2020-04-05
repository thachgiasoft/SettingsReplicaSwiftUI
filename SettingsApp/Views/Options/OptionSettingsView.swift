//
//  OptionSettingsView.swift
//  SettingsApp
//
//  Created by Alonso on 4/4/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct OptionSettingsView: View {
    let option: Option
    
    var body: some View {
        return NavigationLink(destination: OptionInnerDetail(option: option)) {
            HStack {
                DefaultImage()
                Text(option.title)
                    .modifier(LabelModifier(type: .primary))
            }
        }
    }
}
