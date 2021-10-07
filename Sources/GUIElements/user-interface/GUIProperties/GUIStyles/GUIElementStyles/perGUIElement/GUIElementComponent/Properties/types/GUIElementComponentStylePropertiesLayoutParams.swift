//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIElementComponentStylePropertiesLayoutParams:
    GUIElementStylePropertiesLayoutParams,
    GUIPropertyPreferredValueInterface {
    
    associatedtype OverwrittenLayoutParams:
        GUIElementComponentStylePropertiesOverwrittenLayoutParams
    
    associatedtype DefaultConstantPalette:
        DefaultGUIPaletteInterface &
        GUIElementComponentConstantPaletteInterface

    init?(
        layoutParams: Self?,
        overwrittenBy newLayoutParams: OverwrittenLayoutParams?
    )
}
