//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevSoftwareEngineerUIElementComponentFontPalette:
    DevUIElementComponentFontPaletteInterface {
    
    public enum UIElementComponent:
        SystemUIElementComponentPaletteInterface {}
}

extension DevSoftwareEngineerUIElementComponentFontPalette.UIElementComponent {
        
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
