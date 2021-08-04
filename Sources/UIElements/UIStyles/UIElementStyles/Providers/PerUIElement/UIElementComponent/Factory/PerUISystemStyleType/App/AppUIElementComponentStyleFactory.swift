//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppUIElementComponentStyleFactory: UIElementComponentStyleFactoryInterface {
    
    public let styleType: UIStyleType
    
    public var uiComponent: UIComponentStyleFactoryInterface?
    public var uiComponentSet: UIComponentSetStyleFactoryInterface?
    public var uiComponentGroup: UIComponentGroupStyleFactoryInterface?
    public var uiComponentScreen: UIComponentScreenStyleFactoryInterface?
    
    init(styleType: UIStyleType) {
        self.styleType = styleType
        
        self.uiComponent = AppUIComponentStyleFactory(owner: self)
        self.uiComponentSet = AppUIComponentSetStyleFactory(owner: self)
        self.uiComponentGroup = AppUIComponentGroupStyleFactory(owner: self)
        self.uiComponentScreen = AppUIComponentScreenStyleFactory(owner: self)
    }
}
