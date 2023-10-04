//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentScreenStylePropertiesLookParams:
    GUIElementComponentStylePropertiesLookParams
where
    OverwrittenLookParams
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
