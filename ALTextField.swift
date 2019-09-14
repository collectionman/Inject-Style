//
//  ALTextField.swift
//  PracticeWithAutoLayout
//
//  Created by Julian Llorensi on 13/09/2019.
//  Copyright © 2019 Julian Llorensi. All rights reserved.
//
​
import UIKit
​
class ALTextField: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
        backgroundColor = UIColor(red: 190, green: 190, blue: 190, alpha: 0.7)
    }
    
    func setupView() {
        setWithCornerRadius(cornerStyle: RoundedStyle(frame: frame))
        setWithShadows(shadowStyle: ShadowStyle(frame: frame))
    }
}
​
extension ALTextField: RoundedViewProtocol {
    func setWithCornerRadius(cornerStyle: RoundedStyle) {
        cornerStyle.injectInto(viewToAddStyle: self)
    }
}
​
extension ALTextField: ShadowViewProtocol {
    func setWithShadows(shadowStyle: ShadowStyle) {
        shadowStyle.injectInto(viewToAddStyle: self)
    }
}