//
//  LabelModifier.swift
//  SettingsApp
//
//  Created by Alonso on 4/5/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct LabelModifier: ViewModifier {
    
    let type: TextType
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(type.textColor)
            .font(type.fontSize)
            .font(type.fontStyle)
    }
}
