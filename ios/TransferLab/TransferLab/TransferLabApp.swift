//
//  TransferLabApp.swift
//  TransferLab
//
//  Created by Luan Rodrigues on 08/10/26.
//

import SwiftUI

@main
struct TransferLabApp: App {
    @State private var coordinator = AppCoordinator()
    var body: some Scene {
        WindowGroup {
            AppRootView(coordinator: coordinator)
        }
    }
}
