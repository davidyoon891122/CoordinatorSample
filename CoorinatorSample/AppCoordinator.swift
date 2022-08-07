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

    }

    private func showLoginViewController() {
        
    }
}
