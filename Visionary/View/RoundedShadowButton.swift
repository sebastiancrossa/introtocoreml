//
//  RoundedShadowButton.swift
//  Visionary
//
//  Created by Sebastian Crossa on 10/7/18.
//  Copyright © 2018 Sebastian Crossa. All rights reserved.
//

import UIKit

class RoundedShadowButton: UIButton {

    override func awakeFromNib() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.75
        
        self.layer.cornerRadius = 5
    }

}
