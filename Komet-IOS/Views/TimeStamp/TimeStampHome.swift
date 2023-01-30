//
//  TimeStampHome.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import SwiftUI

struct TimeStampHome: View {
    var body: some View {
        ZStack {
            Image("BG Photo")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            
            ScrollView {
                DatetimeHeader(
                    datetime: CurrentDate(
                        time: Date(),
                        timeFormatter: DateFormatter()
                    )
                )
                .foregroundColor(.white)
                
                CurrentFlight()
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .frame(
                            maxHeight: 2000
                        )
                
                
                TimestampBox(
                    title: "Flight\nTime\n(Hobbs)",
                    startTimeType: "Engine Start",
                    stopTimeType: "Engine Stop"
                )
                
                .padding(.top, 20)
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .frame(
                        maxHeight: 160

                    )
                
                TimestampBox(
                    title: "Air \n Time",
                    startTimeType: "Take-off",
                    stopTimeType: "Landing"
                )
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .frame(
                        maxHeight: 160

                    )
            }
        }
        
        .offset(y: 50)

        .foregroundColor(.white)
    }
}

struct TimeStampHome_Previews: PreviewProvider {
    static var previews: some View {
        TimeStampHome()
    }
}
