//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevBootstrapUIElementComponentFontPalette:
    DevUIElementComponentFontPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {}
}

extension DevBootstrapUIElementComponentFontPalette.UIElementComponent {
        
    public enum UIComponent:
        UIElementComponentFontPalette,
        DevUIPalette {}
    
    public enum UIComponentSet:
        UIElementComponentFontPalette,
        DevUIPalette {}
    
    public enum UIComponentGroup:
        UIElementComponentFontPalette,
        DevUIPalette {}
    
    public enum UIComponentScreen:
        UIElementComponentFontPalette,
        DevUIPalette {}
}
