//
//  Created by Łukasz Osiennik on 30/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIPalette:
    UIPalette {}


public protocol SystemUIPaletts:
    UIPalette {
    
    associatedtype ColorPalette: UIColorPalette
    associatedtype FontPalette: UIFontPalette
    associatedtype ConstantPalette: UIElementComponentConstantPalette
}
