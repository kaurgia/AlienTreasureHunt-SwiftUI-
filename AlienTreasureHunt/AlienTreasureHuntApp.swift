//
//  AlienTreasureHuntApp.swift
//  AlienTreasureHunt
//
//  Created by Gian Kaur on 2022-12-16.
//

import SwiftUI

@main
struct AlienTreasureHuntApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserState())
        }
    }
}
