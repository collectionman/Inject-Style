//
//  RoundedStyle.swift
//  PracticeWithAutoLayout
//
//  Created by Julian Llorensi on 13/09/2019.
//  Copyright © 2019 Julian Llorensi. All rights reserved.
//
​
import UIKit
​
protocol RoundedViewProtocol {
    func setWithCornerRadius(cornerStyle: RoundedStyle)
}
​
class RoundedStyle: UIView {
    let CORNER_RADIUS: CGFloat = 30
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = CORNER_RADIUS
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func injectInto(viewToAddStyle view: UIView) {
        view.layer.cornerRadius = layer.cornerRadius
    }
}