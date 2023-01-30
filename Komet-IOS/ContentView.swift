//
//  ContentView.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .flights
    let kometFont: Font = Font.custom("TTOctosquares", size: 20)
    
    enum Tab {
        case flights
        case timestamp
        case flightinfo
        case account
    }
    
    var body: some View {
        TabView(selection: $selection){
            FlightsHome()
                .tabItem {
                    Image("Flights")
                    Text("Flights")
                }
                .tag(Tab.flights)
                .toolbarColorScheme(.light, for: .tabBar)
            TimeStampHome()
                .tabItem {
                    Image("Time stamp")
                    Text("Time Stamps")
                }
                .tag(Tab.timestamp)
                .toolbarColorScheme(.light, for: .tabBar)
            FlightInfoHome()
                .tabItem {
                    Image("Flight info")
                    Text("Flight Info")
                }
                .tag(Tab.flightinfo)
                .toolbarColorScheme(.light, for: .tabBar)
            AccountHome()
                .tabItem {
                    Image("Account")
                    Text("Account")
                }
                .tag(Tab.account)
                .toolbarColorScheme(.light, for: .tabBar)
        }
        .background(Color.init(red: 5, green: 27, blue: 46))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
