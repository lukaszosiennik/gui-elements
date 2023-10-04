//
//  Created by Łukasz Osiennik on 07/10/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIComponentScreenStylePropertiesLayoutParams:
    GUIElementComponentStylePropertiesLayoutParams
where
    OverwrittenLayoutParams
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
