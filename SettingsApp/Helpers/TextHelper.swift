//
//  TextHelper.swift
//  SettingsApp
//
//  Created by Alonso on 4/5/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

enum TextType {
    case primary, subheadlineSmall, subheadlineMedium, subheadlineLarge
    
    var textColor: Color {
        switch self {
        case .primary:
            return .blue
        case .subheadlineSmall, .subheadlineMedium, .subheadlineLarge:
            return .gray
        }
    }
    
    var fontSize: Font {
        switch self {
        case .primary, .subheadlineMedium:
            return .system(size: 18)
        case .subheadlineSmall:
            return .system(size: 16)
        case .subheadlineLarge:
            return .system(size: 20)
        }
    }
    
    var fontStyle: Font {
        switch self {
        case .primary:
            return .system(.body)
        case .subheadlineSmall, .subheadlineMedium, .subheadlineLarge:
            return .system(.subheadline)
        }
    }
}
