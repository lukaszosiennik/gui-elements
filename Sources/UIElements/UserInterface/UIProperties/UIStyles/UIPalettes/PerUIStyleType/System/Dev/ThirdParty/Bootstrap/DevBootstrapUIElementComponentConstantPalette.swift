//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevBootstrapUIElementComponentConstantPalette {
    
    public enum UIElementComponent {}
}

extension DevBootstrapUIElementComponentConstantPalette.UIElementComponent {
        
    public enum UIComponent:
        DevBootstrapUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentSet:
        DevBootstrapUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentGroup:
        DevBootstrapUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentScreen:
        DevBootstrapUIPalette,
        UIElementComponentConstantPalette {}
}
