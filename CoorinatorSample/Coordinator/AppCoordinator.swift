//
//  AppCoordinator.swift
//  CoorinatorSample
//
//  Created by iMac on 2022/08/05.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    private var navigationController: UINavigationController!

    var isLoggedIn: Bool = false

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        if isLoggedIn {
            showMainViewController()
        } else {
            showLoginViewController()
        }
    }

    private func showMainViewController() {
        let coordinator = MainCoordinator(navigationController: navigationController)
        coordinator.delegate = self
        coordinator.start()
        childCoordinators.append(coordinator)
    }

    private func showLoginViewController() {
        let coordinator = LoginCoordinator(navigationController: navigationController)
        coordinator.delegate = self
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
}

extension AppCoordinator: LoginCoordinatorDelegate {
    func didLoggedIn(_ coordinator: LoginCoordinator) {
        childCoordinators = childCoordinators.filter { $0 !== coordinator }
        showMainViewController()
    }
}

extension AppCoordinator: MainCoordinatorDelegate {
    func didLoggedOut(_ coordinator: MainCoordinator) {
        childCoordinators = childCoordinators.filter { $0 !== coordinator }
        showLoginViewController()
    }
}
