//
//  AppCoordinator.swift
//  TransferLab
//
//  Created by Luan Rodrigues on 08/10/26.
//

import Observation

enum AppRoute: Hashable {}

@MainActor
@Observable
final class AppCoordinator {
    var path: [AppRoute] = []
}
