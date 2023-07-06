//
//  ViewController.swift
//  UIKit-lab-2
//
//  Created by Iliya Rahozin on 05.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var firstButton: CustomButton = {
        let btn = CustomButton(text: "First Button")
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    private lazy var secondButton: CustomButton = {
        let btn = CustomButton(text: "Second Medium Button")
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    private lazy var thirdButton: CustomButton = {
        let btn = CustomButton(text: "Third")
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubviews(firstButton, secondButton, thirdButton)
        addConstraints()
        
        thirdButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }

    func addConstraints() {
        NSLayoutConstraint.activate([
            firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 10),
            secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 10),
            thirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc func tapButton(_ button: UIButton) {
        let modalController = UIViewController()
        modalController.view.backgroundColor = .white
        present(modalController, animated: true, completion: nil)
    }
    
}


extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
