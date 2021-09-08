//
//  Created by Łukasz Osiennik on 08/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol SystemUIElementPaletteInterface {
    
    associatedtype UIElementComponent:
        SystemUIElementComponentPaletteInterface
}
public protocol SystemUIElementComponentPaletteInterface {
    
    associatedtype UIComponent:
        SystemUIPalette
    
    associatedtype UIComponentSet:
        SystemUIPalette
    
    associatedtype UIComponentGroup:
        SystemUIPalette
    
    associatedtype UIComponentScreen:
        SystemUIPalette
}
