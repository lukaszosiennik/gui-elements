//
//  Created by Łukasz Osiennik on 07/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public class GUIComponentTypeStyleFactory<
    Paletts:
        SystemGUIComponentPalettsInterface
>:
    GUIElementComponentTypeStyleFactory<
        Paletts
    > {
    
    typealias ColorPalette =
        Paletts.ColorPalette
    typealias FontPalette =
        Paletts.FontPalette
    typealias ConstantPalette =
        Paletts.ConstantPalette
}
