//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevBootstrapUIElementComponentFontPalette:
    DevUIElementComponentFontPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface,
        DevUIPalette,
        UIElementComponentFontPalette {}
}

extension DevBootstrapUIElementComponentFontPalette.UIElementComponent {
        
    public enum UIComponent:
        DevUIPalette,
        UIElementComponentFontPalette {}
    
    public enum UIComponentSet:
        DevUIPalette,
        UIElementComponentFontPalette {}
    
    public enum UIComponentGroup:
        DevUIPalette,
        UIElementComponentFontPalette {}
    
    public enum UIComponentScreen:
        DevUIPalette,
        UIElementComponentFontPalette {}
}
