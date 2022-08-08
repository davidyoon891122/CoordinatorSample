//
//  MainCoordinator.swift
//  CoorinatorSample
//
//  Created by iMac on 2022/08/08.
//

import Foundation
import UIKit

protocol MainCoordinatorDelegate {
    func didLoggedOut(_ coordinator: MainCoordinator)
}

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var delegate: MainCoordinatorDelegate?

    private var navigationController: UINavigationController!

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let mainViewController = MainViewController()
        mainViewController.delegate = self
        navigationController.viewControllers = [mainViewController]
    }
}

extension MainCoordinator: MainViewControllerDelegate {
    func logout() {
        delegate?.didLoggedOut(self)
    }
}
