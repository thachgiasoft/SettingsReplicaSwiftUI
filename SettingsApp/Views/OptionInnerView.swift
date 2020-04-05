//
//  OptionInnerView.swift
//  SettingsApp
//
//  Created by Alonso on 4/4/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct OptionInnerDetail: View {
    let option: Option
    var body: some View {
        Form {
            ForEach(option.values, id: \.title) {
                OptionInnerView(value: $0)
            }
        }.navigationBarTitle(Text(option.title), displayMode: .inline)
    }
}

struct OptionInnerView: View {
    let value: InnerOptionValue
    
    var body: some View {
        Group() {
            if value.isAddSection && !value.isUseToggle {
                Section(header: Text(value.headerTitle)) {
                    InnerView(value: value)
                }
            } else {
                InnerView(value: value)
            }
        }
    }
}
