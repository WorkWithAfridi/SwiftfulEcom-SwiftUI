//
//  SearchView.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 2/11/23.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String  = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("Search for furniture...", text: $search)
                    .padding()
            }
            .background(
                Color("kSecondary")
            )
            .cornerRadius(12)
            
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(
                    Color("kPrimary")
                )
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
