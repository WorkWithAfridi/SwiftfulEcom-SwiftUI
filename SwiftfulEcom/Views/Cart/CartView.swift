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
        VStack{
            if cartManager.products.count > 0 {
                ScrollView {
                    VStack(alignment: .center, content:
                            {
                        Text("My Cart")
                            .font(.largeTitle)
                        ForEach(cartManager.products, id: \.id){
                            product in
                            CartProductView(product: product)
                        }
                        .padding(.bottom)
                        HStack{
                            Text("Your total is ")
                            Spacer()
                            Text("$ \(cartManager.total).00")
                                .bold()
                        }
                        Text("Checkout")
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding()
                            .buttonStyle(MaterialButtonStyle())
                        //                        PaymentButton(action: {})
                        //                            .padding()
                        //                            .cornerRadius(12)
                    })
                }
            } else{
                Spacer()
                Text("Your Cart is Empty")
                    .font(.title2)
                Spacer()
            }
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 100)
        }.padding(.horizontal, 15)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
