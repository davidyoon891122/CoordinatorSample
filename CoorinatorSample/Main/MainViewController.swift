//
//  MainViewController.swift
//  CoorinatorSample
//
//  Created by iMac on 2022/08/08.
//

import Foundation
import UIKit

protocol MainViewControllerDelegate {
    func logout()
}

final class MainViewController: UIViewController {

    var delegate: MainViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        let item = UIBarButtonItem(
            title: "Logout",
            style: .plain,
            target: self,
            action: #selector(didLogoutButtonTapped)
        )

        navigationItem.rightBarButtonItem = item
    }

    deinit {
        print("- \(type(of: self)) deinit")
    }

    @objc
    func didLogoutButtonTapped() {
        self.delegate?.logout()
    }
}
