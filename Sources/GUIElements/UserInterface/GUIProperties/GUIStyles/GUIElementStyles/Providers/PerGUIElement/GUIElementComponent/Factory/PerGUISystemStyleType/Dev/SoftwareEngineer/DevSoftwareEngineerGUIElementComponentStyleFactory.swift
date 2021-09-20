//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevSoftwareEngineerGUIElementComponentStyleFactory:
    GUIElementComponentStyleFactoryBasis {
    
    init() {
        super.init(
            styleType: .system(.dev(.softwareEngineer)),
            uiComponentStyleFactoryType: DevSoftwareEngineerGUIComponentStyleFactory.self,
            uiComponentSetStyleFactoryType: DevSoftwareEngineerGUIComponentSetStyleFactory.self,
            uiComponentGroupStyleFactoryType: DevSoftwareEngineerGUIComponentGroupStyleFactory.self,
            uiComponentScreenStyleFactoryType: DevSoftwareEngineerGUIComponentScreenStyleFactory.self
        )
    }
}
