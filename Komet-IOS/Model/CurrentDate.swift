//
//  CurrentDate.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import Foundation

struct CurrentDate {
    let time: Date
    let timeFormatter: DateFormatter


    func getTime() -> String {
        timeFormatter.dateFormat = "HH:ss"
        let stringTime = timeFormatter.string(from: time)
        return stringTime
   }
    
    func getDate() -> String {
        timeFormatter.setLocalizedDateFormatFromTemplate("EEEE, MMMM d, yyyy")
        let stringDate = timeFormatter.string(from: time)
        return stringDate
    }
}
