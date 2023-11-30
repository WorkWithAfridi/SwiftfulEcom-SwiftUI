//
//  HomepageAppBar.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 11/30/23.
//

import SwiftUI

struct HomepageAppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(systemName: "location.north.fill")
                    .frame(width: 20, height: 20)
                    .padding(.trailing)
                Text("Dhaka, Bangladesh")
                    .font(.title2)
                    .foregroundColor(.gray)
                Spacer()
                NavigationLink(
                    destination:
                        CartView()
                        .environmentObject(cartManager), label: {
                            CartButton(numberOfProducts: cartManager.products.count)
                        }
                )
            }
            Text("Find the Most \nLuxurious")
                .font(.largeTitle)
                .bold()
            + Text(" Furniture")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("kPrimary"))
        }
        .padding(.horizontal)
    }
}

#Preview {
    HomepageAppBar()
}
