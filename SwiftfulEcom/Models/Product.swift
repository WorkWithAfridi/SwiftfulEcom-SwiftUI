//
//  Product.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 2/11/23.
//

import Foundation

struct ProductModel : Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}


var productList = [
    ProductModel(name: "Product One", image: "furniture_one", description: "Voluptate quis pariatur consequat elit amet quis sunt tempor nulla. Ad reprehenderit labore consequat labore. Laboris tempor ullamco amet nulla magna irure irure aute ad tempor. Eiusmod aliquip enim amet nulla ut sint sunt officia laboris. Ea duis culpa qui adipisicing adipisicing..", supplier: "IKEA", price: 1000),
    ProductModel(name: "Product Two", image: "furniture_two", description: "Ad velit ullamco exercitation veniam aliqua enim id aliqua irure eiusmodVoluptate quis pariatur consequat elit amet quis sunt tempor nulla. Ad reprehenderit labore consequat labore. Laboris tempor ullamco amet nulla magna irure irure aute ad tempor. Eiusmod aliquip enim amet nulla ut sint sunt officia laboris. Ea duis culpa qui adipisicing adipisicing..", supplier: "BestBuy", price: 2000),
    ProductModel(name: "Product Three", image: "furniture_three", description: "Ad velit ullamco exercitation veniam aliqua enim id aliqua irure eiusmod.Voluptate quis pariatur consequat elit amet quis sunt tempor nulla. Ad reprehenderit labore consequat labore. Laboris tempor ullamco amet nulla magna irure irure aute ad tempor. Eiusmod aliquip enim amet nulla ut sint sunt officia laboris. Ea duis culpa qui adipisicing adipisicing.", supplier: "Gamestop", price: 3000),
    ProductModel(name: "Product Four", image: "furniture_four", description: "Ad velit ullamco exercitation veniam aliqua enim id aliqua irure eiusmod.Voluptate quis pariatur consequat elit amet quis sunt tempor nulla. Ad reprehenderit labore consequat labore. Laboris tempor ullamco amet nulla magna irure irure aute ad tempor. Eiusmod aliquip enim amet nulla ut sint sunt officia laboris. Ea duis culpa qui adipisicing adipisicing.", supplier: "Amazon", price: 4000),
    ProductModel(name: "Product Five", image: "furniture_five", description: "Ad velit ullamco exercitation veniam aliqua enim id aliqua irure eiusmod.Voluptate quis pariatur consequat elit amet quis sunt tempor nulla. Ad reprehenderit labore consequat labore. Laboris tempor ullamco amet nulla magna irure irure aute ad tempor. Eiusmod aliquip enim amet nulla ut sint sunt officia laboris. Ea duis culpa qui adipisicing adipisicing.", supplier: "IKEA", price: 5000),
    ProductModel(name: "Product One", image: "furniture_one", description: "Ad velit ullamco exercitation veniam aliqua enim id aliqua irure eiusmod.Voluptate quis pariatur consequat elit amet quis sunt tempor nulla. Ad reprehenderit labore consequat labore. Laboris tempor ullamco amet nulla magna irure irure aute ad tempor. Eiusmod aliquip enim amet nulla ut sint sunt officia laboris. Ea duis culpa qui adipisicing adipisicing.", supplier: "Home Depo", price: 1000)
]
