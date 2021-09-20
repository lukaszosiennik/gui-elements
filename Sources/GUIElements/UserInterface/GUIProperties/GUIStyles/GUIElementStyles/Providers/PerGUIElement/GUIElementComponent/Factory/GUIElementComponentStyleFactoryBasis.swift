//
//  Created by Łukasz Osiennik on 07/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public class GUIElementComponentStyleFactoryBasis:
    GUIElementComponentStyleFactoryInterface {
    
    public let styleType: GUIStyleType
    
    public var uiComponent: GUIComponentStyleFactoryInterface?
    public var uiComponentSet: GUIComponentSetStyleFactoryInterface?
    public var uiComponentGroup: GUIComponentGroupStyleFactoryInterface?
    public var uiComponentScreen: GUIComponentScreenStyleFactoryInterface?
    
    init(
        styleType: GUIStyleType,
        uiComponentStyleFactoryType: GUIComponentStyleFactoryInterface.Type,
        uiComponentSetStyleFactoryType: GUIComponentSetStyleFactoryInterface.Type,
        uiComponentGroupStyleFactoryType: GUIComponentGroupStyleFactoryInterface.Type,
        uiComponentScreenStyleFactoryType: GUIComponentScreenStyleFactoryInterface.Type
    ) {
        self.styleType = styleType
        
        self.uiComponent = uiComponentStyleFactoryType.init(
            owner: self
        )
        self.uiComponentSet = uiComponentSetStyleFactoryType.init(
            owner: self
        )
        self.uiComponentGroup = uiComponentGroupStyleFactoryType.init(
            owner: self
        )
        self.uiComponentScreen = uiComponentScreenStyleFactoryType.init(
            owner: self
        )
    }
}
