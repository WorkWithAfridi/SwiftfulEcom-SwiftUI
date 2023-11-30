//
//  ProfileView.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 11/30/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View  {
        VStack{
            NavigationLink(destination: SettingView()) {
                Text("Go to Settings")
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
                    .buttonStyle(MaterialButtonStyle())
            }
            .padding(.bottom, -30)
            NavigationLink(destination: CartView()
                .environmentObject(cartManager)) {
                    Text("Open Cart")
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                        .buttonStyle(MaterialButtonStyle())
                }
            
        }
    }
}

#Preview {
    ProfileView()
}

