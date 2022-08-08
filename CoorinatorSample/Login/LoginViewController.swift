//
//  LoginViewController.swift
//  CoorinatorSample
//
//  Created by iMac on 2022/08/08.
//

import Foundation
import UIKit

protocol LoginViewControllerDelegate {
    func login()
}

final class LoginViewController: UIViewController {

    var delegate: LoginViewControllerDelegate?

    override func viewDidLoad() {
        view.backgroundColor = .systemIndigo
        super.viewDidLoad()
        let item = UIBarButtonItem(
            title: "Login",
            style: .plain,
            target: self,
            action: #selector(didTapLoginButton)
        )
        navigationItem.rightBarButtonItem = item
    }

    deinit {
        print("- \(type(of: self)) deinit")
    }


    @objc
    func didTapLoginButton() {
        self.delegate?.login()
    }
}
