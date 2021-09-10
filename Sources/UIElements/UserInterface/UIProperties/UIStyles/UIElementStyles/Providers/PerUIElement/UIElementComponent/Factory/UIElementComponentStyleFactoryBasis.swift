//
//  Created by Łukasz Osiennik on 07/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public class UIElementComponentStyleFactoryBasis:
    UIElementComponentStyleFactoryInterface {
    
    public let styleType: UIStyleType
    
    public var uiComponent: UIComponentStyleFactoryInterface?
    public var uiComponentSet: UIComponentSetStyleFactoryInterface?
    public var uiComponentGroup: UIComponentGroupStyleFactoryInterface?
    public var uiComponentScreen: UIComponentScreenStyleFactoryInterface?
    
    init(
        styleType: UIStyleType,
        uiComponentStyleFactoryType: UIComponentStyleFactoryInterface.Type,
        uiComponentSetStyleFactoryType: UIComponentSetStyleFactoryInterface.Type,
        uiComponentGroupStyleFactoryType: UIComponentGroupStyleFactoryInterface.Type,
        uiComponentScreenStyleFactoryType: UIComponentScreenStyleFactoryInterface.Type
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
