//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapUIElementComponentStyleFactory:
    UIElementComponentStyleFactoryInterface {
    
    public let styleType: UIStyleType
    
    public var uiComponent: UIComponentStyleFactoryInterface?
    public var uiComponentSet: UIComponentSetStyleFactoryInterface?
    public var uiComponentGroup: UIComponentGroupStyleFactoryInterface?
    public var uiComponentScreen: UIComponentScreenStyleFactoryInterface?
    
    init(
        styleType: UIStyleType
    ) {
        self.styleType = styleType
        
        self.uiComponent = DevBootstrapUIComponentStyleFactory(
            owner: self
        )
        self.uiComponentSet = DevBootstrapUIComponentSetStyleFactory(
            owner: self
        )
        self.uiComponentGroup = DevBootstrapUIComponentGroupStyleFactory(
            owner: self
        )
        self.uiComponentScreen = DevBootstrapUIComponentScreenStyleFactory(
            owner: self
        )
    }
}
