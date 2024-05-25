//
//  ViewController.swift
//  CameraCapture
//
//  Created by qq on 2024.05.24.
//

import UIKit
import SwiftUI
import AVFoundation

class ViewController: UIViewController {
    
    let buttona: UIButton = {
        let button = UIButton()
        button.setTitle("open camera", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func showPermissionDeniedAlert(_ permission: String) {
        let alert = UIAlertController(title: "Please Allow Access", message: "Allowing access to the \(permission) lets you pick for your photos", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK, I understand", style: .default, handler: { result in
            guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
            UIApplication.shared.open(url)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @objc func requestCameraPermission(_ sender: UIButton) {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            self.setupView()
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { [weak self] granted in
                if granted {
                    DispatchQueue.main.async {
                        self?.setupView()
                    }
                } else {
                    print("action")
                }
            }
        case .denied, .restricted:
            self.showPermissionDeniedAlert("Camera")
        @unknown default:
            fatalError()
        }
    }
    
    @objc func setupView() {
        let view = MCameraController()
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = self.view.bounds
        hostingController.didMove(toParent: self)
        present(hostingController, animated: true)
//        self.view.addSubview(hostingController.view)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttona.addTarget(self, action: #selector(requestCameraPermission(_:)), for: .touchUpInside)
        view.backgroundColor = .yellow
        view.addSubview(buttona)
        
        NSLayoutConstraint.activate([
            buttona.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttona.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }


}

