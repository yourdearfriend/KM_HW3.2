//
//  ColorView.swift
//  KM_HW3.2
//
//  Created by Konstantin on 21.10.2020.
//

import SwiftUI

struct ColorView: View {
    @State var red: CGFloat
    @State var green: CGFloat
    @State var blue: CGFloat
    
    var body: some View {
    
        Color(UIColor(red: red, green: green, blue: blue, alpha: 1))
            .frame(width: 300, height: 150, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(lineWidth: 5.0)
                    .foregroundColor(.gray)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 121, green: 100, blue: 20)
    }
}
