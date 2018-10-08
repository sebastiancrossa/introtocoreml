//
//  CameraVC.swift
//  Visionary
//
//  Created by Sebastian Crossa on 10/7/18.
//  Copyright © 2018 Sebastian Crossa. All rights reserved.
//

import UIKit
import AVFoundation

class CameraVC: UIViewController {

    // MARK : Variable declarations
    var captureSession: AVCaptureSession!
    var output:AVCapturePhotoOutput!
    var previewLayer: AVCaptureVideoPreviewLayer!
    
    // MARK : Outlet connections
    @IBOutlet weak var capturedImageView: RoundedShadowImageView!
    @IBOutlet weak var flashButton: RoundedShadowButton!
    @IBOutlet weak var itemIdentification: UILabel!
    @IBOutlet weak var confidenceLabel: UILabel!
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var identifierLabel: RoundedShadowView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        previewLayer.frame = cameraView.bounds
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let backCamera = AVCaptureDevice.default(for: AVMediaType.video)
        
        captureSession = AVCaptureSession()
        captureSession.sessionPreset = AVCaptureSession.Preset.hd1920x1080
        
        // When using the camera you always have to try to catch errors, since they are prominent here
        do {
            let input = try AVCaptureDeviceInput(device: backCamera!)
            
            if captureSession.canAddInput(input) == true {
                captureSession.addInput(input)
            }
            
            output = AVCapturePhotoOutput()
            
            if captureSession.canAddOutput(output) == true {
                captureSession.addOutput(output!)
                
                previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
                previewLayer.videoGravity = AVLayerVideoGravity.resizeAspect // Similar to the content mode in an imageView
                previewLayer.connection?.videoOrientation = .portrait
                
                cameraView.layer.addSublayer(previewLayer!)
                captureSession.startRunning()
            }
        } catch {
            debugPrint(error)
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

