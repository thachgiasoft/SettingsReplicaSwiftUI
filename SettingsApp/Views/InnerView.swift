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
                Image("default")
                .resizable()
                .cornerRadius(12)
                .frame(width: 25, height: 25)
                .clipped()
                .aspectRatio(contentMode: .fit)
                Text(value.title)
                    .foregroundColor(.blue)
                    .font(.system(size: 18))
            }
        }
    }
}
