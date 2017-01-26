//
//  BorderButton.swift
//  TableViewSample
//
//  Created by Okawa Hitoshi on 2017/01/26.
//  Copyright © 2017年 HitoshiOkawa. All rights reserved.
//

import UIKit

@IBDesignable class BorderButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0.0
    @IBInspectable var borderWidth: CGFloat = 0.0
    @IBInspectable var borderColor: UIColor = UIColor.clear

    override func draw(_ rect: CGRect) {
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}
