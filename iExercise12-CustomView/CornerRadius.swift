//
//  CornerRadius.swift
//  iExercise12-CustomView
//
//  Created by Minh Tan Vu on 23/05/2023.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        
        set (value) {
            layer.cornerRadius = value
            layer.masksToBounds = true
            self.clipsToBounds = true
        }
    }
}
