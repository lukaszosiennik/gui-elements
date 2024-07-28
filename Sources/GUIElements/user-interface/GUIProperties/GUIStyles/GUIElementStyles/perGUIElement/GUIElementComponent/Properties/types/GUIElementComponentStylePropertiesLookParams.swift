//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol GUIElementComponentStylePropertiesLookParams:
    GUIElementStylePropertiesLookParams,
    GUIPropertyDefaultOptionalValueInterface {
    
    associatedtype OverwrittenLookParams:
        GUIElementComponentStylePropertiesOverwrittenLookParams
    
    associatedtype DefaultConstantPalette:
        DefaultGUIPaletteInterface &
        GUIElementComponentConstantPaletteInterface
    
    static var `default`: Self? {
        get
    }

    init?(
        lookParams: Self?,
        overwrittenBy newLookParams: OverwrittenLookParams?
    )
}

extension GUIElementComponentStylePropertiesLookParams {
    
    public static var `default`: Self? {
        return nil
    }
}
