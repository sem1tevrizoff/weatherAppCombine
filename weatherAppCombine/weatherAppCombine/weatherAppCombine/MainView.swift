//
//  MainView.swift
//  weatherAppCombine
//
//  Created by sem1 on 2.01.23.
//

import UIKit

class MainView: UIView {
    
    private lazy var nameCityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "City Name"
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        mainSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func mainSetup() {
        backgroundColor = .red
        setupLayouts()
        setupLayoutConstraints()
    }
    
    private func setupLayouts() {
        [nameCityLabel].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func setupLayoutConstraints() {
        NSLayoutConstraint.activate([
            nameCityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            nameCityLabel.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            nameCityLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            nameCityLabel.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
}
