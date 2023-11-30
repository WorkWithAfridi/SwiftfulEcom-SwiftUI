//
//  CartProductView.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 4/11/23.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: ProductModel
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .cornerRadius(9)
            VStack(alignment: .leading, spacing: 5){
                Text(product.name)
                    .bold()
                Text("$ \(product.price)")
                    .bold()
                
            }
            .padding()
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .padding(.vertical)
        .background(Color("kSecondary"))
        .cornerRadius(12)
        .frame(alignment: .leading)
    }
}

#Preview {
    CartProductView(product: productList[2])
        .environmentObject(CartManager())
}
