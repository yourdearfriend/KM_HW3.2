//
//  ContentView.swift
//  KM_HW3.2
//
//  Created by Konstantin on 20.10.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var colorRed = CGFloat.random(in: 0...255)
    @State private var colorGreen = CGFloat.random(in: 0...255)
    @State private var colorBlue = CGFloat.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGray6)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ColorView(red: colorRed,
                          green: colorGreen,
                          blue: colorBlue)
                    .padding()
                
                ColorSlider(sliderValue: $colorRed,
                            rgbColorForSlider: .red)
                ColorSlider(sliderValue: $colorGreen,
                            rgbColorForSlider: .green)
                ColorSlider(sliderValue: $colorBlue,
                            rgbColorForSlider: .blue)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
