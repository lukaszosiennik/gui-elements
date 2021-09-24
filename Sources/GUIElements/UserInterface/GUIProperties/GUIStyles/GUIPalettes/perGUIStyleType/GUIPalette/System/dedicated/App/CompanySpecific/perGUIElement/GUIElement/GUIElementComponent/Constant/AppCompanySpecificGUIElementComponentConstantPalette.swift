//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificGUIElementComponentConstantPalette:
    AppGUIElementComponentConstantPaletteInterface {
    
    public enum GUIElementComponent:
        SystemGUIElementComponentPaletteInterface {}
}

extension AppCompanySpecificGUIElementComponentConstantPalette.GUIElementComponent {
        
    public enum GUIComponent:
        GUIElementComponentConstantPalette,
        AppGUIPalette {}
    
    public enum GUIComponentSet:
        GUIElementComponentConstantPalette,
        AppGUIPalette {}
    
    public enum GUIComponentGroup:
        GUIElementComponentConstantPalette,
        AppGUIPalette {}
    
    public enum GUIComponentScreen:
        GUIElementComponentConstantPalette,
        AppGUIPalette {}
}
