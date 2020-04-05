//
//  DefaultImage.swift
//  SettingsApp
//
//  Created by Alonso on 4/5/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct DefaultImage: View {
    let width: CGFloat
    let height: CGFloat
    
    init(width: CGFloat = 25, height: CGFloat = 25) {
        self.width = width
        self.height = height
    }
    
    var body: some View {
        Image("default")
        .resizable()
        .cornerRadius(12)
        .frame(width: width, height: height)
        .clipped()
        .aspectRatio(contentMode: .fit)
    }
}
