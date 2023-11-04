//
//  ProductCardView.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 2/11/23.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManager : CartManager
    var product: ProductModel
    var body: some View {
        ZStack{
            Color("kSecondary")
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height: 160)
                        .cornerRadius(12)
                    Text(product.name)
                        .font(.headline)
                        .padding(.vertical, 1)
                        .foregroundColor(.black)
                    Text(product.supplier)
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding(.vertical, 0.5)
                        .foregroundColor(.black)
                    Text("$ \(product.price)")
                        .bold()
                }
                Button{
                    cartManager.addToCart(product: product)
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .frame(width: 35, height: 35)
                }
            }
        }
        .frame(width: 185, height: 260)
        .cornerRadius(15)
        .padding(.leading)
    }
}

#Preview {
    ProductCardView(
        product: productList[0]
    )
    .environmentObject(CartManager())
}
