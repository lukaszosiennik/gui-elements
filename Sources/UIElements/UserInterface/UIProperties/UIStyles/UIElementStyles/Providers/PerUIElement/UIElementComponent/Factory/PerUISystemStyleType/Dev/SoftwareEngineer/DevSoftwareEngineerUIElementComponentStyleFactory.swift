//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevSoftwareEngineerUIElementComponentStyleFactory:
    UIElementComponentStyleFactoryBasis<
        DevSoftwareEngineerUIElementComponentColorPalette.UIElementComponent,
        DevSoftwareEngineerUIElementComponentFontPalette.UIElementComponent,
        DevSoftwareEngineerUIElementComponentConstantPalette.UIElementComponent
    > {
    
    init() {
        super.init(
            styleType: .system(.dev(.softwareEngineer)),
            uiComponentStyleFactoryType: DevSoftwareEngineerUIComponentStyleFactory.self,
            uiComponentSetStyleFactoryType: DevSoftwareEngineerUIComponentSetStyleFactory.self,
            uiComponentGroupStyleFactoryType: DevSoftwareEngineerUIComponentGroupStyleFactory.self,
            uiComponentScreenStyleFactoryType: DevSoftwareEngineerUIComponentScreenStyleFactory.self
        )
    }
}
