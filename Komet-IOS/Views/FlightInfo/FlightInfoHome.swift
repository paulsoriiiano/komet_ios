//
//  FlightInfoHome.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import SwiftUI

struct FlightInfoHome: View {
    var body: some View {
        ZStack {
            Image("BG Photo")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        Text("Flight Info")
                .foregroundColor(.white)
            .font(.custom("TTOctosquares-Regular", size: 20))
        }
    }
    
}

struct FlightInfoHome_Previews: PreviewProvider {
    static var previews: some View {
        FlightInfoHome()
    }
}
