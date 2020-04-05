//
//  OptionRow.swift
//  SettingsApp
//
//  Created by Alonso on 4/4/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct OptionRow: View {

    let option: Option
    
    var body: some View {
        Group() {
            if option.isAddSection {
                Section {
                    OptionSettingsView(option: option)
                }
            } else {
                OptionSettingsView(option: option)
            }
        }
    }
    
}
