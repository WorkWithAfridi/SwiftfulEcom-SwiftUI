//
//  NavigationStateManager.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 11/30/23.
//

import Foundation
import SwiftUI

class NavigationStateManager: ObservableObject {

    @Published var selectionPath = NavigationPath()
    
    func popToRoot() {
        selectionPath = NavigationPath()
    }
    func goToSettings() {
    }
}
