//
//  Created by Łukasz Osiennik on 01/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit
import commons

extension UIColor:
    UIElementsExtendedTypeInterface {}
extension CommonsExtension
where
    ExtendedType: UIColor {}

extension UIColor {
    
    public convenience init?(hex: String) {
        guard hex.hasPrefix("#")
        else {
            return nil
        }
        
        let hexColor: String = .init(
            hex[
                hex.index(
                    hex.startIndex,
                    offsetBy: 1
                )...
            ]
        )
        guard hexColor.count == 8
        else {
            return nil
        }

        let scanner: Scanner = .init(
            string: hexColor
        )
        var hexNumber: UInt64 = 0
        guard scanner.scanHexInt64(&hexNumber)
        else {
            return nil
        }
        
        self.init(
            red: CGFloat((hexNumber & 0xff000000) >> 24) / 255,
            green: CGFloat((hexNumber & 0x00ff0000) >> 16) / 255,
            blue: CGFloat((hexNumber & 0x0000ff00) >> 8) / 255,
            alpha: CGFloat(hexNumber & 0x000000ff) / 255
        )
    }
}
