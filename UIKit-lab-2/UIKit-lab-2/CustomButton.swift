//
//  CustomButton.swift
//  UIKit-lab-2
//
//  Created by Iliya Rahozin on 06.07.2023.
//

import UIKit

class CustomButton: UIButton {
    
    init(text: String) {
        super.init(frame: .zero)
        var config = UIButton.Configuration.filled()
        config.title = text
        config.image = UIImage(systemName: "arrow.right.circle.fill")
        config.imagePadding = 8
        config.imagePlacement = .trailing
        config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 14, bottom: 10, trailing: 14)
        
        self.configuration = config
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        UIView.animate(withDuration: 0.2, delay: 0.0, options: [.allowUserInteraction]) { [weak self] in
            self?.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }
    }

        
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        UIView.animate(withDuration: 0.2, delay: 0.0, options: [.allowUserInteraction]) { [weak self] in
            self?.transform = .identity
        }
    }
}
