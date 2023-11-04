//
//  ImageSlider.swift
//  SwiftfulEcom
//
//  Created by Khondakar Afridi on 2/11/23.
//

import SwiftUI

struct ImageSlider: View {
    @State private var currentIndex = 0
    var slides: [String] = [
    "furniture_one",
    "furniture_two",
    "furniture_three",
    "furniture_four",
    ]
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .trailing){
                Image(slides[currentIndex])
                    .resizable()
                    .frame(height: 180)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            HStack{
                ForEach(0..<slides.count){
                    index in
                    Circle()
                        .fill(
                            Color(self.currentIndex == index ? "kPrimary" : "kSecondary")
                        )
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear{
                Timer.scheduledTimer(withTimeInterval: 4, repeats: true){
                    timer in
                    if self.currentIndex + 1 == self.slides.count {
                        self.currentIndex = 0
                    }else{
                        self.currentIndex += 1
                    }
                }
        }
    }
}

#Preview {
    ImageSlider()
}
