//
//  StartButton.swift
//  PracticeWithAutoLayout
//
//  Created by Julian Llorensi on 13/09/2019.
//  Copyright © 2019 Julian Llorensi. All rights reserved.
//
​
import UIKit
​
class StartButton: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
        backgroundColor = .purple
    }

    func setupView() {
        setWithCornerRadius(cornerStyle: RoundedStyle(frame: frame))
        setWithShadows(shadowStyle: ShadowStyle(frame: frame))
    }
}

extension StartButton: RoundedViewProtocol {
    func setWithCornerRadius(cornerStyle: RoundedStyle) {
        cornerStyle.injectInto(viewToAddStyle: self)
    }
}

extension StartButton: ShadowViewProtocol {
    func setWithShadows(shadowStyle: ShadowStyle) {
        shadowStyle.injectInto(viewToAddStyle: self)
    }
}