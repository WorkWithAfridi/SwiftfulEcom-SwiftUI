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
                        HomepageAppBar()
                            .environmentObject(cartManager)
                        SearchView()
                        ImageSlider()
                        NewArrivals()
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
