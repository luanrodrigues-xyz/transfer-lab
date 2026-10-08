//
//  AppRootView.swift
//  TransferLab
//
//  Created by Luan Rodrigues on 08/10/26.
//

import SwiftUI

struct AppRootView: View {
    @Bindable var coordinator: AppCoordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            ContentView()
        }
    }
}

#Preview {
    AppRootView(coordinator: AppCoordinator())
}
