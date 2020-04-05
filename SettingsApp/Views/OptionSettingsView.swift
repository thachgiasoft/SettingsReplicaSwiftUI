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
                Image("default")
                    .resizable()
                    .cornerRadius(12)
                    .frame(width: 25, height: 25)
                    .clipped()
                    .aspectRatio(contentMode: .fit)
                Text(option.title)
                    .foregroundColor(.blue)
                    .font(.system(size: 18.0))
            }
        }
    }
}
