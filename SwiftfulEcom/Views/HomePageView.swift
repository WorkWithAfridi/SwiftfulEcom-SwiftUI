//
//  HomePageView.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 2/11/23.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack(alignment: .top){
                    Color(.white)
                        .edgesIgnoringSafeArea(.all)
                    VStack{
                        AppBar()
                        SearchView()
                        ImageSlider()
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
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(height: 100)
                    }
                }
            }
        }
        .environmentObject(cartManager)
    }
}

#Preview {
    HomePageView()
        .environmentObject(CartManager())
}

struct AppBar: View {
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
                        CartView(), label: {
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
