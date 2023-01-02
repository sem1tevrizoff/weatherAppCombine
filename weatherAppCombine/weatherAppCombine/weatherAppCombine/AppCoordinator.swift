//
//  AppCoordinator.swift
//  weatherAppCombine
//
//  Created by sem1 on 2.01.23.
//

import Foundation
import UIKit

class AppCoordinator {
    
    private weak var screen: UIViewController?
    
    func start() -> UINavigationController {
        createMainScreen()
    }
    
    private func createMainScreen() -> UINavigationController {
        let navigationViewController = UINavigationController()
        let viewModel = MainViewModel(coordinator: self)
        let viewController = MainViewController(viewModel: viewModel)
        screen = viewController
        navigationViewController.viewControllers = [viewController]
        return navigationViewController
    }
}
