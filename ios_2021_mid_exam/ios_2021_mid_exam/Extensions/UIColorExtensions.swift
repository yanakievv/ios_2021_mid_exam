//
//  UIColorExtensions.swift
//  ios_2021_mid_exam
//
//  Created by Vladimir Yanakiev on 7.01.22.
//

import Foundation
import UIKit

extension UIColor {
    static let wannaBeBlack = UIColor(red: 17, green: 17, blue: 17)
    static let wannabeWhite = UIColor(red: 249, green: 249, blue: 249)
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
}

