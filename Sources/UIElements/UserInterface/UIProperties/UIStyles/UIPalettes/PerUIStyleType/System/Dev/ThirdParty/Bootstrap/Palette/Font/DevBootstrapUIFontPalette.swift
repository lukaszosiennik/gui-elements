//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevBootstrapUIFontPalette {
    
    public enum UIElementComponent:
        DevBootstrapUIPalette,
        UIFontPalette {}
}

extension DevBootstrapUIFontPalette.UIElementComponent {
        
    public enum UIComponent:
        DevBootstrapUIPalette,
        UIFontPalette {}
    
    public enum UIComponentSet:
        DevBootstrapUIPalette,
        UIFontPalette {}
    
    public enum UIComponentGroup:
        DevBootstrapUIPalette,
        UIFontPalette {}
    
    public enum UIComponentScreen:
        DevBootstrapUIPalette,
        UIFontPalette {}
}
