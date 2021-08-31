//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum AppUIColorPalette:
    AppUIPalette,
    UIColorPalette {
    
    public enum UIElementComponent {}
}

extension AppUIColorPalette.UIElementComponent {
        
    public enum UIComponent:
        AppUIPalette,
        UIColorPalette {}
    
    public enum UIComponentSet:
        AppUIPalette,
        UIColorPalette {}
    
    public enum UIComponentGroup:
        AppUIPalette,
        UIColorPalette {}
    
    public enum UIComponentScreen:
        AppUIPalette,
        UIColorPalette {}
}
