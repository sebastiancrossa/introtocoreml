//
//  CameraVC.swift
//  Visionary
//
//  Created by Sebastian Crossa on 10/7/18.
//  Copyright © 2018 Sebastian Crossa. All rights reserved.
//

import UIKit

class CameraVC: UIViewController {

    @IBOutlet weak var capturedImageView: RoundedShadowImageView!
    @IBOutlet weak var flashButton: RoundedShadowButton!
    @IBOutlet weak var itemIdentification: UILabel!
    @IBOutlet weak var confidenceLabel: UILabel!
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var identifierLabel: RoundedShadowView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}

