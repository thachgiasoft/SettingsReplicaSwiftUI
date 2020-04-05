//
//  DefaultImage.swift
//  SettingsApp
//
//  Created by Alonso on 4/5/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct DefaultImage: View {
    var body: some View {
        Image("default")
        .resizable()
        .cornerRadius(12)
        .frame(width: 25, height: 25)
        .clipped()
        .aspectRatio(contentMode: .fit)
    }
}
