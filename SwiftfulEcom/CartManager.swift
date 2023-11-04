//
//  CartManager.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 2/11/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [ProductModel] = []
    
    @Published private(set) var total: Int = 0
    
    func addToCart(product selectedProduct : ProductModel){
        products.append(selectedProduct)
        total += selectedProduct.price
    }
    
    func removeFromCart(product selectedProduct : ProductModel){
        products = products.filter{$0.id != selectedProduct.id}
        total -= selectedProduct.price
    }
}
