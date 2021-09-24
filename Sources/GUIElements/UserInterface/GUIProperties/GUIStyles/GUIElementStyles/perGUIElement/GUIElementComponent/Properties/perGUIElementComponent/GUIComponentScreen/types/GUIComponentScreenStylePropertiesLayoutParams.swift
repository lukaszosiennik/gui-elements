//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentScreenStylePropertiesLayoutParams:
    GUIElementComponentStylePropertiesLayoutParams
where
    GUIElementComponentStylePropertiesOverwrittenLayoutParamsType
        : GUIComponentScreenStylePropertiesOverwrittenLayoutParams,
    DefaultConstantPalette
        == DefaultGUIElementComponentConstantPalette.GUIElementComponent.GUIComponentScreen {}

extension GUIComponentScreenStylePropertiesLayoutParams {
    
    public init?(
        layoutParams: Self?,
        overwrittenBy newLayoutParams: EmptyGUIComponentScreenStylePropertiesOverwrittenLayoutParams?
    ) {
        return nil
    }
}
