//
//  DatetimeHeader.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import SwiftUI

struct DatetimeHeader: View {
    var datetime: CurrentDate
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack{
                Image("Weather")
                    .padding(2)
                Text(datetime.getTime())
                    .font(.custom("TTOctosquares-Regular", size: 30))
                
            }
            HStack {
                Text("25°C")
                    .font(.custom("TTOctosquares-Regular", size: 20))
                    .padding(2)
                Text(datetime.getDate())
                    .font(.custom("TTOctosquares-Regular", size: 20))
            }
        }
        .padding()
    }
        
}

struct DatetimeHeader_Previews: PreviewProvider {
    static var previews: some View {
        DatetimeHeader(datetime: CurrentDate(
            time: Date(),
            timeFormatter: DateFormatter()
        ))
    }
}
