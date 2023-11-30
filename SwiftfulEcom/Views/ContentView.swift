//
//  ContentView.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 1/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var navManager = NavigationStateManager()
    var body: some View {
        NavigationStack() {
            DashboardView()
        }
        .navigationDestination(for: String.self) { key in
            SettingView()
        }
    }
    
}

#Preview {
    ContentView()
        .environmentObject(CartManager())
}
