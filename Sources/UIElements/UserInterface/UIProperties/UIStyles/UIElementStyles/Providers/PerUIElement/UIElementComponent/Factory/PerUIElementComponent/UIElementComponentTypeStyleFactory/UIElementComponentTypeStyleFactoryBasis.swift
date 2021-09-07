//
//  Created by Łukasz Osiennik on 07/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public class UIElementComponentTypeStyleFactoryBasis<
    ColorPalette: UIColorPalette,
    FontPalette: UIFontPalette,
    ConstantPalette: UIElementComponentConstantPalette
>:
    UIElementComponentTypeStyleFactory {
    
    typealias ColorPalette = ColorPalette
    typealias FontPalette = FontPalette
    typealias ConstantPalette = ConstantPalette
}
