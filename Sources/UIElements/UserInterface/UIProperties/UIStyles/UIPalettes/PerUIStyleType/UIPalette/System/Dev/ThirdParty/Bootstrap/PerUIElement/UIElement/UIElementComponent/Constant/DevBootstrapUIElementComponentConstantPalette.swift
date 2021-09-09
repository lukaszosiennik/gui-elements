//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevBootstrapUIElementComponentConstantPalette:
    DevUIElementComponentConstantPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface,
        DevUIPalette,
        UIElementComponentConstantPalette {}
}

extension DevBootstrapUIElementComponentConstantPalette.UIElementComponent {
        
    public enum UIComponent:
        DevUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentSet:
        DevUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentGroup:
        DevUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentScreen:
        DevUIPalette,
        UIElementComponentConstantPalette {}
}
