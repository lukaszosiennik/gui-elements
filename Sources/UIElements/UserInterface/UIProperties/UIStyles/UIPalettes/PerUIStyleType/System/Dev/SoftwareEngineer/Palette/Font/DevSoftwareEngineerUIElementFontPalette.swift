//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevSoftwareEngineerUIElementFontPalette:
    DevUIElementFontPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface,
        DevUIPalette,
        UIFontPalette {}
}

extension DevSoftwareEngineerUIElementFontPalette.UIElementComponent {
        
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
