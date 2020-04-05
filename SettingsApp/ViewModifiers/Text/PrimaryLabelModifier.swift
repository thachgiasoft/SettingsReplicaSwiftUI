//
//  PrimaryLabelModifier.swift
//  SettingsApp
//
//  Created by Alonso on 4/5/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct PrimaryLabelModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.blue)
            .font(.system(size: 18.0))
    }
}
