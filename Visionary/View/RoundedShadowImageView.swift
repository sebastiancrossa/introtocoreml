//
//  RoundedShadowImageView.swift
//  Visionary
//
//  Created by Sebastian Crossa on 10/7/18.
//  Copyright © 2018 Sebastian Crossa. All rights reserved.
//

import UIKit

class RoundedShadowImageView: UIImageView {

    override func awakeFromNib() {
        // darGray color needs to be cgColor to be used as a shadow color
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.75
        
        self.layer.cornerRadius = 10
    }

}
