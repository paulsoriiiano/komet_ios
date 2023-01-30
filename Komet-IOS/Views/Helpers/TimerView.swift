//
//  TimerView.swift
//  Komet-IOS
//
//  Created by Paul Junver Soriano on 1/30/23.
//

import SwiftUI

struct TimerView: View {
    @State var isTimerRunning = false
    @State private var startTime =  Date()
    @State private var timerString = "0.00"
    let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()

    var body: some View {

        Text(self.timerString)
            .font(Font.system(.largeTitle, design: .monospaced))
            .onReceive(timer) { _ in
                if self.isTimerRunning {
                    timerString = String(format: "%.2f", (Date().timeIntervalSince( self.startTime)))
                }
            }
            .onTapGesture {
                if !isTimerRunning {
                    timerString = "0.00"
                    startTime = Date()
                }
                isTimerRunning.toggle()
            }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
