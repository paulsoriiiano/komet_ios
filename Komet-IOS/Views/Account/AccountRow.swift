//
//  AccountRow.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import SwiftUI

struct AccountRow: View {
    var title: String
    var subtitle: String
    var icon: Image
    var arrow: Image
    
    var body: some View {
        HStack {
            icon
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.trailing, 10)
            
            if subtitle != "" {
                VStack (alignment: .leading) {
                    Text(title)
                        .bold()
                        .font(.custom("TTOctosquaresExp-Bold", size: 20))
                    Text(subtitle)
                        .font(.custom("TTOctosquares-Regular", size: 15))
                }
            } else {
                Text(title)
                
                .font(.custom("TTOctosquares-Regular", size: 20))
            }
            
            
            Spacer()
            
           arrow
        }
        .padding(20)
        .border(Color.white, width: 2)
    }
}

struct AccountRow_Previews: PreviewProvider {
    static var previews: some View {
        AccountRow(
            title: "User Name",
            subtitle: "Pilot",
            icon: Image("Account"),
            arrow: Image("Arrow Right White")
                
        )
    }
}
