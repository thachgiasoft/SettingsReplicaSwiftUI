//
//  InnerView.swift
//  SettingsApp
//
//  Created by Alonso on 4/4/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct InnerView: View {
    let value: InnerOptionValue
    
    var body: some View {
        return NavigationLink(destination: EndView(value: value)) {
            HStack {
                Text(value.title)
            }
        }
    }
}
