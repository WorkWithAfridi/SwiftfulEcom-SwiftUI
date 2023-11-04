//
//  ProductsDetailsView.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 4/11/23.
//

import SwiftUI

struct ProductsDetailsView: View {
    var product: ProductModel
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                VStack(alignment: .leading){
                    ZStack(alignment: .topTrailing){
                        Image(product.image)
                            .resizable()
                            .frame(height: 300)
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 63)
                            .padding(.trailing, 20)
                    }
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                                .font(.title2)
                                .bold()
                            Spacer()
                            Text("$ \(product.price)")
                                .font(.title2)
                                .fontWeight(.medium)
                                .padding(.horizontal)
                                .background(Color("kSecondary"))
                                .cornerRadius(12)
                            
                        }
                        .padding(.top)
                        .padding(.vertical)
                        HStack(spacing: 10){
                            ForEach(0..<5){
                                index in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.yellow)
                            }
                            Text("(4.5)")
                                .foregroundColor(.gray)
                        }
                        .padding(.bottom, 1)
                        Text("Description: ")
                            .font(.title3)
                            .fontWeight(.medium)
                        Text(product.description)
                            .lineLimit(5)
                            .padding(.bottom, 1)
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text("Size")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                Text("Height: 125 cm")
                                    .foregroundColor(.gray)
                                Text("Width: 125 cm")
                                    .foregroundColor(.gray)
                                Text("Diameter: 125 cm")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            VStack(alignment: .leading){
                                Text("Colors")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                Text("Blue")
                                    .foregroundColor(.blue)
                                Text("Red")
                                    .foregroundColor(.red)
                                Text("Orange")
                                    .foregroundColor(.orange)
                            }
                            Spacer()
                        }
                        .padding(.vertical)
                        PaymentButton(action: {})
                            .frame(height: 50)
                            .padding(.top, 1)
                    }
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(20)
                    .offset(y: -30)
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 100)
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProductsDetailsView(
        product: productList[2]
    )
}
