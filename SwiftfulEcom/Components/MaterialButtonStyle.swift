//
//  MaterialButtonStyle.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 11/30/23.
//

import Foundation
import SwiftUI

struct MaterialButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .opacity(configuration.isPressed ? 0.96 : 1.0)
    }
}
