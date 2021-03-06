//
//  SwitchCameraButton.swift
//  Slate
//
//  Created by John Coates on 5/10/17.
//  Copyright © 2017 John Coates. All rights reserved.
//

import UIKit

final class SwitchCameraButton: InverseMaskButtonImage {
    
    // MARK: - Init
    
    @objc convenience init() {
        self.init(asset: KitComponent.switchCamera)
    }
    
    // MARK: - Setup
    
    override func initialSetup() {
        iconWidthRatio = 0.65
        super.initialSetup()
        contentView.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        rounding = SwitchCameraComponent.defaultRounding
    }
    
}
