//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppUIElementComponentConstantPalette {
    
    public enum UIElementComponent {}
}

extension AppUIElementComponentConstantPalette.UIElementComponent {
        
    public enum UIComponent:
        AppUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentSet:
        AppUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentGroup:
        AppUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentScreen:
        AppUIPalette,
        UIElementComponentConstantPalette {}
}
