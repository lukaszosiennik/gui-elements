//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemGUIElementPaletteInterface {
    
    associatedtype GUIElementComponent:
        SystemGUIElementComponentPaletteInterface
}
public protocol SystemGUIElementComponentPaletteInterface {
    
    associatedtype GUIComponent:
        SystemGUIPaletteInterface
    
    associatedtype GUIComponentSet:
        SystemGUIPaletteInterface
    
    associatedtype GUIComponentGroup:
        SystemGUIPaletteInterface
    
    associatedtype GUIComponentScreen:
        SystemGUIPaletteInterface
}
