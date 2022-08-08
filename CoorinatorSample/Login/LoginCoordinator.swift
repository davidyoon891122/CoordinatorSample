//
//  LoginCoordinator.swift
//  CoorinatorSample
//
//  Created by iMac on 2022/08/08.
//

import Foundation
import UIKit

protocol LoginCoordinatorDelegate {
    func didLoggedIn(_ coordinator: LoginCoordinator)
}

final class LoginCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var delegate: LoginCoordinatorDelegate?

    private var navigationController: UINavigationController!

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let loginViewController = LoginViewController()
        loginViewController.delegate = self

        self.navigationController.viewControllers = [loginViewController]
    }
}

extension LoginCoordinator: LoginViewControllerDelegate {
    func login() {
        self.delegate?.didLoggedIn(self)
    }
}
