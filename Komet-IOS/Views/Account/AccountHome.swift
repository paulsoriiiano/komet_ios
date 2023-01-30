//
//  AccountHome.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import SwiftUI

struct AccountHome: View {
    
    var body: some View {
        ZStack {
            Image("BG Photo")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                DatetimeHeader(
                    datetime: CurrentDate(
                        time: Date(),
                        timeFormatter: DateFormatter()
                    )
                )
                .offset(y: -100)
                
                VStack(spacing: 0) {
                    AccountRow(
                        title: "User Name",
                        subtitle: "Pilot",
                        icon: Image("Account"),
                        arrow:Image("Log out")
                    )
                    
                    
                    AccountRow(
                        title: "Edit Profile",
                        subtitle: "",
                        icon: Image("Edit"),
                        arrow:Image("Arrow Right White")
                    )
                    
                    AccountRow(
                        title: "Change Password",
                        subtitle: "",
                        icon: Image("PW"),
                        arrow:Image("Arrow Right White")
                    )
                    
                    AccountRow(
                        title: "Settings",
                        subtitle: "",
                        icon: Image("Setting"),
                        arrow:Image("Arrow Right White")
                    )
                }
                .padding()
            }
            .foregroundColor(.white)
            
        }
    }
}

struct AccountHome_Previews: PreviewProvider {
    static var previews: some View {
        AccountHome()
    }
}
