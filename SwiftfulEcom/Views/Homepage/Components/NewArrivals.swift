//
//  NewArrivals.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 11/30/23.
//

import SwiftUI

struct NewArrivals: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        HStack{
            Text("New Arrivals")
                .font(.title2)
                .fontWeight(.medium)
            Spacer()
            Image(systemName: "circle.grid.2x2.fill")
                .foregroundColor(Color("kPrimary"))
        }
        .padding(.horizontal)
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 10){
                ForEach(productList, id: \.id){
                    product in
                    NavigationLink{
                        ProductsDetailsView(product: product)
                    } label: {
                        ProductCardView(product: product)
                            .environmentObject(cartManager)
                    }
                }
            }
        }
    }
}

#Preview {
    NewArrivals()
}
