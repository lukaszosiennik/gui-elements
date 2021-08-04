//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

final class DevUIElementComponentStyleFactory: UIElementComponentStyleFactoryInterface {
    
    let styleType: UIStyleType
    
    var uiComponent: UIComponentStyleFactoryInterface?
    var uiComponentSet: UIComponentSetStyleFactoryInterface?
    var uiComponentGroup: UIComponentGroupStyleFactoryInterface?
    var uiComponentScreen: UIComponentScreenStyleFactoryInterface?
    
    init(styleType: UIStyleType) {
        self.styleType = styleType
        
        self.uiComponent = DevUIComponentStyleFactory(owner: self)
        self.uiComponentSet = DevUIComponentSetStyleFactory(owner: self)
        self.uiComponentGroup = DevUIComponentGroupStyleFactory(owner: self)
        self.uiComponentScreen = DevUIComponentScreenStyleFactory(owner: self)
    }
}
