//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentScreenStylePropertiesLookParams:
    GUIElementComponentStylePropertiesLookParams
where
    GUIElementComponentStylePropertiesOverwrittenLookParamsType
        : GUIComponentScreenStylePropertiesOverwrittenLookParams,
    DefaultConstantPalette
        == DefaultGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentScreen {}

extension GUIComponentScreenStylePropertiesLookParams {
    
    public init?(
        lookParams: Self?,
        overwrittenBy newLookParams: EmptyGUIComponentScreenStylePropertiesOverwrittenLookParams?
    ) {
        return nil
    }
}
