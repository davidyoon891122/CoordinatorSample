//
//  SceneDelegate.swift
//  CoorinatorSample
//
//  Created by iMac on 2022/08/05.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .systemBackground

        let navigationController = UINavigationController()
        window?.rootViewController = navigationController

        let coordinator = AppCoordinator(navigationController: navigationController)
        coordinator.start()
        
        window?.makeKeyAndVisible()
    }
}

