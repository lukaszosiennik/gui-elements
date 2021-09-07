//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppCompanySpecificUIFontPalette {
    
    public enum UIElementComponent:
        AppCompanySpecificUIPalette,
        UIFontPalette {}
}

extension AppCompanySpecificUIFontPalette.UIElementComponent {
        
    public enum UIComponent:
        AppCompanySpecificUIPalette,
        UIFontPalette {}
    
    public enum UIComponentSet:
        AppCompanySpecificUIPalette,
        UIFontPalette {}
    
    public enum UIComponentGroup:
        AppCompanySpecificUIPalette,
        UIFontPalette {}
    
    public enum UIComponentScreen:
        AppCompanySpecificUIPalette,
        UIFontPalette {}
}
