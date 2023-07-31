//
//  ContentView.swift
//  fika_iOS
//
//  Created by ByoungYoon Cho on 2023/07/28.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            // Header Bar
            HeaderView()
            BannerView()
            MatchScheduleView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

