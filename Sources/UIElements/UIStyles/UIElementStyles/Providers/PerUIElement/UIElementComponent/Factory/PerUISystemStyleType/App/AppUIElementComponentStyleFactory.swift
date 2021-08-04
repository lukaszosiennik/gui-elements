//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

final class AppUIElementComponentStyleFactory: UIElementComponentStyleFactoryInterface {
    
    let styleType: UIStyleType
    
    var uiComponent: UIComponentStyleFactoryInterface?
    var uiComponentSet: UIComponentSetStyleFactoryInterface?
    var uiComponentGroup: UIComponentGroupStyleFactoryInterface?
    var uiComponentScreen: UIComponentScreenStyleFactoryInterface?
    
    init(styleType: UIStyleType) {
        self.styleType = styleType
        
        self.uiComponent = AppUIComponentStyleFactory(owner: self)
        self.uiComponentSet = AppUIComponentSetStyleFactory(owner: self)
        self.uiComponentGroup = AppUIComponentGroupStyleFactory(owner: self)
        self.uiComponentScreen = AppUIComponentScreenStyleFactory(owner: self)
    }
}
