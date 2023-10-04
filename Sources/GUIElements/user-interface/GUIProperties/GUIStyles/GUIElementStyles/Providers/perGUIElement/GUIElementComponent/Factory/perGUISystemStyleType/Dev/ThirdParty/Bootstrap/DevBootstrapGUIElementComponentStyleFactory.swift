//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapGUIElementComponentStyleFactory:
    GUIElementComponentStyleFactoryBasis {
    
    init() {
        super.init(
            styleType: .system(.dev(.thirdParty(.bootstrap))),
            uiComponentStyleFactoryType: DevBootstrapGUIComponentStyleFactory.self,
            uiComponentSetStyleFactoryType: DevBootstrapGUIComponentSetStyleFactory.self,
            uiComponentGroupStyleFactoryType: DevBootstrapGUIComponentGroupStyleFactory.self,
            uiComponentScreenStyleFactoryType: DevBootstrapGUIComponentScreenStyleFactory.self
        )
    }
}
