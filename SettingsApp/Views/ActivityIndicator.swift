//
//  ActivityIndicator.swift
//  SettingsApp
//
//  Created by Alonso on 2/9/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
        
    typealias UIViewType = UIActivityIndicatorView
    
    let style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        uiView.startAnimating()
    }
    
}
