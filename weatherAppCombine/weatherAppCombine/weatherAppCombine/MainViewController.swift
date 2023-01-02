//
//  ViewController.swift
//  weatherAppCombine
//
//  Created by sem1 on 2.01.23.
//

import UIKit
import Combine

class MainViewController: UIViewController {
    
    private let viewModel: MainViewModel
    private let mainView = MainView()
    
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

