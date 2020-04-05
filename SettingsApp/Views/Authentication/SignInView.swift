//
//  SignInView.swift
//  SettingsApp
//
//  Created by Alonso on 1/13/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            DefaultImage(width: Constants.profileImageWidth,
                         height: Constants.profileImageHeight)
            VStack(alignment: .leading, spacing: 4) {
                Text("Sign in to your iPhone")
                    .foregroundColor(.blue)
                    .lineLimit(nil)
                    .font(.system(.headline))
                Text("Set up iCloud, the App Store and more.")
                    .foregroundColor(.gray)
                    .lineLimit(nil)
                    .font(.system(.subheadline))
            }
        }
    }
}

// MARK: - Constants

extension SignInView {
    struct Constants {
        static let profileImageHeight: CGFloat = 60
        static let profileImageWidth: CGFloat = 60
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
