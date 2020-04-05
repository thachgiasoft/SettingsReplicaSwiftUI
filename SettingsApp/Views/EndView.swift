//
//  EndView.swift
//  SettingsApp
//
//  Created by Alonso on 4/4/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct EndView: View {
    let value: InnerOptionValue
    
    var body: some View {
        return NavigationLink(destination: EndView(value: value)) {
            Text("Coming Soon")
        }.navigationBarTitle(Text(value.title), displayMode: .inline)
    }
}
