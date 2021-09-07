//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public enum DevSoftwareEngineerUIFontPalette {
    
    public enum UIElementComponent:
        DevSoftwareEngineerUIPalette,
        UIFontPalette {}
}

extension DevSoftwareEngineerUIFontPalette.UIElementComponent {
        
    public enum UIComponent:
        DevSoftwareEngineerUIPalette,
        UIFontPalette {}
    
    public enum UIComponentSet:
        DevSoftwareEngineerUIPalette,
        UIFontPalette {}
    
    public enum UIComponentGroup:
        DevSoftwareEngineerUIPalette,
        UIFontPalette {}
    
    public enum UIComponentScreen:
        DevSoftwareEngineerUIPalette,
        UIFontPalette {}
}
