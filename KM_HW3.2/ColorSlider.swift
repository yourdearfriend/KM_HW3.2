//
//  ColorSlider.swift
//  KM_HW3.2
//
//  Created by Konstantin on 20.10.2020.
//

import SwiftUI

struct ColorSlider: View {
    @State var valueColorTextField = ""
    @Binding var sliderValue: CGFloat
    @State var rgbColorForSlider: Color
    
    var body: some View {
        HStack(spacing: 10){
            Text("\(lround(Double(sliderValue)))")
                .frame(width: 35).foregroundColor(rgbColorForSlider)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(rgbColorForSlider)
            
            TextField("", text: $valueColorTextField)
                .frame(width: 60, height: 30)
                .overlay(
                    RoundedRectangle(cornerRadius: 5.0)
                        .stroke(lineWidth: 1.0)
                        .foregroundColor(rgbColorForSlider)
                )
        }.padding()
    }
}

struct ColorSlider_Previews: PreviewProvider {
    @State static var valueSlider: CGFloat = 100
    
    static var previews: some View {
        ColorSlider(sliderValue: $valueSlider, rgbColorForSlider: .gray)
    }
}
