//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificUIColorPalette {
    
    public enum UIElementComponent {}
}

extension AppCompanySpecificUIColorPalette.UIElementComponent {
        
    public enum UIComponent:
        AppCompanySpecificUIPalette,
        UIColorPalette {}
    
    public enum UIComponentSet:
        AppCompanySpecificUIPalette,
        UIColorPalette {}
    
    public enum UIComponentGroup:
        AppCompanySpecificUIPalette,
        UIColorPalette {}
    
    public enum UIComponentScreen:
        AppCompanySpecificUIPalette,
        UIColorPalette {}
}
