//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public class GUIComponentScreenTypeStyleFactory<
    Paletts:
        SystemGUIComponentScreenPalettsInterface
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
