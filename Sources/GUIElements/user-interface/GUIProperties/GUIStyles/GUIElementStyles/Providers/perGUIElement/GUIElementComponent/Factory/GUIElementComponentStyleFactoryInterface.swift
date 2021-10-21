//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIElementComponentStyleFactoryInterface:
    GUIElementStyleFactoryInterface {
    
    var uiComponent: GUIComponentStyleFactoryInterface? {
        get
    }
    var uiComponentSet: GUIComponentSetStyleFactoryInterface? {
        get
    }
    var uiComponentGroup: GUIComponentGroupStyleFactoryInterface? {
        get
    }
    var uiComponentScreen: GUIComponentScreenStyleFactoryInterface? {
        get
    }
}