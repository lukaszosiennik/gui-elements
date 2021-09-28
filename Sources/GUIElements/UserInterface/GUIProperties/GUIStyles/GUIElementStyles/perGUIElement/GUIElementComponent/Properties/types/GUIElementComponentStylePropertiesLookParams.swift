//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIElementComponentStylePropertiesLookParams:
    GUIElementStylePropertiesLookParams,
    GUIPropertyDefaultOptionalValueInterface {
    
    associatedtype GUIElementComponentStylePropertiesOverwrittenLookParamsType:
        GUIElementComponentStylePropertiesOverwrittenLookParams
    
    associatedtype DefaultConstantPalette:
        DefaultGUIPaletteInterface &
        GUIElementComponentConstantPaletteInterface
    
    static var `default`: Self? {
        get
    }

    init?(
        lookParams: Self?,
        overwrittenBy newLookParams: GUIElementComponentStylePropertiesOverwrittenLookParamsType?
    )
}

extension GUIElementComponentStylePropertiesLookParams {
    
    public static var `default`: Self? {
        return nil
    }
}
