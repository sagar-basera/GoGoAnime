//
//  UIView+Extension.swift
//  Zoro.To
//
//  Created by SAGAR SINGH on 14/10/23.
//

import Foundation
import UIKit

extension UIView {
    func addShadow(cornerRadius: CGFloat, shadowRadius: CGFloat, shadowOpacity: Float, color: UIColor , shadowOffset: CGSize){
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = false
            layer.shadowRadius = shadowRadius
            layer.shadowOpacity = shadowOpacity
            layer.shadowColor = color.cgColor
            layer.shadowOffset = shadowOffset
        }
        
         func addBorder(borderWidth: CGFloat, borderColor: UIColor){
            layer.borderWidth = borderWidth
            layer.borderColor = borderColor.cgColor
        }
}
