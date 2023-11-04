//
//  CartView.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 4/11/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id){
                    product in
                    CartProductView(product: product)
                }
                HStack{
                    Text("Your total is ")
                    Spacer()
                    Text("$ \(cartManager.total).00")
                        .bold()
                }
                .padding()
                PaymentButton(action: {})
                    .padding()
                    .cornerRadius(12)
            } else{
                Text("Your Cart is Empty")
            }
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 100)
        }
        .navigationTitle(Text("My Cart"))
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
