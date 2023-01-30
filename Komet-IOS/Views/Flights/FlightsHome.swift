//
//  FlightsHome.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import SwiftUI

struct FlightsHome: View {
    var body: some View {
        ZStack {
            Image("BG Photo")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                DatetimeHeader(
                    datetime: CurrentDate(
                        time: Date(),
                        timeFormatter: DateFormatter()
                    )
                )
                .foregroundColor(.white)
            }
        }
    }
    
    struct FlightsHome_Previews: PreviewProvider {
        static var previews: some View {
            FlightsHome()
        }
    }
}
