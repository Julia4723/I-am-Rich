//
//  ViewController.swift
//  I am Rich
//
//  Created by user on 09.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Private Property
    private let logoImage = UIImageView()
    private let labelText = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
}

//MARK: - Settings View
private extension ViewController {

    func setupView() {
        addSubView()
        setupLogoImage()
        setupLabel()
        setupLayout()
        view.backgroundColor = .systemIndigo
    }
}

//MARK: - Setting
private extension ViewController {
    func addSubView() {
        [logoImage, labelText].forEach { subView in
            view.addSubview(subView)
        }
    }
    
    func setupLabel() {
        labelText.text = "I am Rich"
        labelText.textColor = .white
        labelText.textAlignment = .center
        labelText.font = .systemFont(ofSize: 32)
    }
    
    func setupLogoImage() {
        logoImage.image = UIImage(named: "diamond")
        logoImage.contentMode = .scaleAspectFit
    }
}

//MARK: - Layout
private extension ViewController {
    func setupLayout() {
        [logoImage, labelText].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
            
        }
        
        NSLayoutConstraint.activate([
            
            labelText.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            labelText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelText.heightAnchor.constraint(equalToConstant: 100),
            
            logoImage.topAnchor.constraint(equalTo: labelText.bottomAnchor, constant: 100),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            logoImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25),
            
        ])
    }
}
