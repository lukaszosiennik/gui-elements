//
//  Created by Łukasz Osiennik on 01/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit
import commons

extension UIColor:
    GUIElementsExtendedTypeInterface {}

extension CommonsExtension
// : SelfInstanceReturningBasedOnInputInterface
where
    ExtendedType
        == UIColor {
    
    private static var `default`: UIColor {
        return .black
    }
    
    public static func `init`(
        hex: String
    ) -> UIColor {
        return `init`(
            hex: hex
        ) ?? `default`
    }
    
    public static func `init`(
        hex: String
    ) -> UIColor? {
        guard hex.hasPrefix(
            "#"
        )
        else {
            return nil
        }
        
        let hexValue: String = .init(
            hex[
                hex.index(
                    hex.startIndex,
                    offsetBy: 1
                )...
            ]
        )
        let hexColor = hexValue.count == 6 ?
            hexValue + "ff" : hexValue
        guard hexColor.count == 8
        else {
            return nil
        }

        var hexNumber: UInt64 = 0
        guard Scanner(
            string: hexColor
        ).scanHexInt64(
            &hexNumber
        )
        else {
            return nil
        }
        
        return .init(
            red: CGFloat(
                (hexNumber & 0xff000000) >> 24
            ) / 255,
            green: CGFloat(
                (hexNumber & 0x00ff0000) >> 16
            ) / 255,
            blue: CGFloat(
                (hexNumber & 0x0000ff00) >> 8
            ) / 255,
            alpha: CGFloat(
                hexNumber & 0x000000ff
            ) / 255
        )
    }
}

extension CommonsExtension
// : SelfInstanceReturningBasedOnInputInterface
where
    ExtendedType
        == UIColor {
    
    public static func valueName(
        input: String
    ) -> ExtendedType {
        return `init`(
            hex: input
        )
    }
}
