//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificUIElementComponentConstantPalette {
    
    public enum UIElementComponent:
        AppCompanySpecificUIPalette,
        UIElementComponentConstantPalette {}
}

extension AppCompanySpecificUIElementComponentConstantPalette.UIElementComponent {
        
    public enum UIComponent:
        AppCompanySpecificUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentSet:
        AppCompanySpecificUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentGroup:
        AppCompanySpecificUIPalette,
        UIElementComponentConstantPalette {}
    
    public enum UIComponentScreen:
        AppCompanySpecificUIPalette,
        UIElementComponentConstantPalette {}
}
