//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevBootstrapUIFontPalette:
    DevUIElementFontPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface,
        DevUIPalette,
        UIFontPalette {}
}

extension DevBootstrapUIFontPalette.UIElementComponent {
        
    public enum UIComponent:
        DevUIPalette,
        UIFontPalette {}
    
    public enum UIComponentSet:
        DevUIPalette,
        UIFontPalette {}
    
    public enum UIComponentGroup:
        DevUIPalette,
        UIFontPalette {}
    
    public enum UIComponentScreen:
        DevUIPalette,
        UIFontPalette {}
}
