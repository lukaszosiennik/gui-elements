//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevSoftwareEngineerUIElementComponentFontPalette:
    DevUIElementComponentFontPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface,
        DevUIPalette,
        UIElementComponentFontPalette {}
}

extension DevSoftwareEngineerUIElementComponentFontPalette.UIElementComponent {
        
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
