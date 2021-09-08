//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class DevBootstrapUIElementComponentStyleFactory:
    UIElementComponentStyleFactoryBasis<
        DevBootstrapUIElementColorPalette.UIElementComponent,
        DevBootstrapUIElementFontPalette.UIElementComponent,
        DevBootstrapUIElementComponentConstantPalette.UIElementComponent
    > {
    
    init() {
        super.init(
            styleType: .system(.dev(.thirdParty(.bootstrap))),
            uiComponentStyleFactoryType: DevBootstrapUIComponentStyleFactory.self,
            uiComponentSetStyleFactoryType: DevBootstrapUIComponentSetStyleFactory.self,
            uiComponentGroupStyleFactoryType: DevBootstrapUIComponentGroupStyleFactory.self,
            uiComponentScreenStyleFactoryType: DevBootstrapUIComponentScreenStyleFactory.self
        )
    }
}
