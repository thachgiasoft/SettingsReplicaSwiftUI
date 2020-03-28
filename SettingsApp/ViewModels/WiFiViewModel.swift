//
//  WiFiViewModel.swift
//  SettingsApp
//
//  Created by Alonso on 3/28/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import Combine

class WiFiViewModel: ObservableObject {
    
    var didChange = PassthroughSubject<Void, Never>()
    @Published var selection: WiFiSelection = .off {
        didSet {
            update()
        }
    }
    
    func update() {
        didChange.send()
    }

}

enum WiFiSelection: String, CaseIterable {
    case on = "On"
    case off = "Off"
}
