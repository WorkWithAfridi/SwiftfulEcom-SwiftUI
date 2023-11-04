//
//  CartButton.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 2/11/23.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts : Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "bag.fill")
                .padding(5)
                .foregroundColor(Color("kPrimary"))
            if numberOfProducts > 0{
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    CartButton(
        numberOfProducts: 1
    )
}
