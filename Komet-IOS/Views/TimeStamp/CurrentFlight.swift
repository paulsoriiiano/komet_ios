//
//  CurrentFlight.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import SwiftUI

struct CurrentFlight: View {
    var flightTime = "5.23"
    var airTime = "4.85"
    var estTime = "8.98"
    
    var body: some View {
        VStack {
            HStack{
                Image("Current flight")
                Text("Flight Time:")
                    .font(.custom("TTOctosquares-Light", size: 17))
                Text("\(flightTime) hrs")
                    .font(.custom("TTOctosquaresExp-Bold", size: 17))
            }
            
            HStack{
                Image("Current air")
                Text("Air Time:")
                    .font(.custom("TTOctosquares-Light", size: 17))
                Text("\(airTime) hrs")
                    .font(.custom("TTOctosquaresExp-Bold", size: 17))
            }
            Divider()
                .overlay(.white)
            Image("Take off")
            HStack{
                Text("YBW")
                Image("Line 1")
                Text("YBW")
            }
            .font(.custom("TTOctosquares-Regular", size: 22))
            
            HStack{
                Text("Estimated Time:")
                    .font(.custom("TTOctosquares-Light", size: 11))
                Text("\(airTime) hrs")
                    .font(.custom("TTOctosquaresExp-Bold", size: 11))
            }
            
        }
        .padding()
        .border(Color.white, width: 2)
        .cornerRadius(15)
    }
}

struct CurrentFlight_Previews: PreviewProvider {
    static var previews: some View {
        CurrentFlight()
    }
}
