//
//  ShadowStyle.swift
//  PracticeWithAutoLayout
//
//  Created by Julian Llorensi on 13/09/2019.
//  Copyright © 2019 globant. All rights reserved.
//
​
import UIKit
​
protocol ShadowViewProtocol {
    func setWithShadows(shadowStyle: ShadowStyle)
}
​
class ShadowStyle: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.8
        layer.shadowOffset = .zero
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shadowRadius = 10
        layer.shouldRasterize = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func injectInto(viewToAddStyle view: UIView) {
        view.layer.shadowColor = layer.shadowColor
        view.layer.shadowOpacity = layer.shadowOpacity
        view.layer.shadowOffset = layer.shadowOffset
        view.layer.shadowPath = layer.shadowPath
        view.layer.shadowRadius = layer.shadowRadius
        view.layer.shouldRasterize = layer.shouldRasterize
    }
}