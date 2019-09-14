//
//  ViewController.swift
//  PracticeWithAutoLayout
//
//  Created by Julian Llorensi on 13/09/2019.
//  Copyright © 2019 Julian Llorensi. All rights reserved.
//
​
import UIKit
​
class ViewController: UIViewController {
    let backgroundImageView: UIImageView = UIImageView()
​
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
​
    private func setupBackgroundImageView() {
        view.addSubview(backgroundImageView)
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive           = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive     = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive   = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "app-background-image")
        view.sendSubviewToBack(backgroundImageView) // This put the view on the bottom of the view's hierarchy
    }
    
    private func setupView() {
        setupBackgroundImageView()
    }
}