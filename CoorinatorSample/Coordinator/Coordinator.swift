//
//  Coordinator.swift
//  CoorinatorSample
//
//  Created by iMac on 2022/08/05.
//

import Foundation

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func start()
}
