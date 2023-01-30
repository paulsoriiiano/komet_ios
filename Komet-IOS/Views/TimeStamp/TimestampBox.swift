//
//  TimestampBox.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import SwiftUI

struct TimestampBox: View {
    var title: String
    var startTimeType: String
    var startTime = Date()
    var stopTimeType: String
    var stopTime = Date()
    
    func formatTime(time: Date) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:ss"
        let stringTime = dateFormatter.string(from: time)
        return stringTime
    }
    
    
    var body: some View {
        HStack(alignment: .center){
            
            Text(title)
                .multilineTextAlignment(.center)
                .font(.custom("TTOctosquaresExp-Bold", size: 18))
            
            Divider()
                .overlay(.white)
            
            VStack{
                VStack (alignment: .leading){
                    Text("\(startTimeType) Time")
                        .font(.custom("TTOctosquares-Regular", size: 14))
                        .padding(.bottom, 1)
                    Text(formatTime(time: startTime))
                        .font(.custom("TTOctosquaresExp-Bold", size: 14))
                }
                
                Divider()
                    .overlay(.white)
                
                VStack (alignment: .leading){
                    Text("\(stopTimeType) Time")
                        .font(.custom("TTOctosquares-Regular", size: 14))
                        .padding(.bottom, 1)
                    Text(formatTime(time: stopTime))
                        .font(.custom("TTOctosquaresExp-Bold", size: 14))
                }
            }
            
        }
        .padding()
        .border(Color.white, width: 2)
        .cornerRadius(15)
    }
}

struct TimestampBox_Previews: PreviewProvider {
    static var previews: some View {
        TimestampBox(
            title: "Air\nTime",
            startTimeType: "Engine",
            stopTimeType: "Engine"
        )
    }
}
