//
//  AccountList.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import SwiftUI

struct AccountList: View {
    var body: some View {
        List {
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
    }
}

struct AccountList_Previews: PreviewProvider {
    static var previews: some View {
        AccountList()
    }
}
