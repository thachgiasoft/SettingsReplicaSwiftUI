//
//  WiFiViewModel.swift
//  SettingsApp
//
//  Created by Alonso on 3/28/20.
//  Copyright © 2020 Alonso. All rights reserved.
//

import Combine

class WiFiViewModel: ObservableObject {

    @Published var selection: WiFiSelection = .off

}

enum WiFiSelection: String, CaseIterable {
    case on = "On"
    case off = "Off"
}
