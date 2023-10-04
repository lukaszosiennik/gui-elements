//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public final class AppCompanySpecificGUIElementComponentStyleFactory:
    GUIElementComponentStyleFactoryBasis {
    
    init() {
        super.init(
            styleType: .system(.app(.companySpecific)),
            uiComponentStyleFactoryType: AppCompanySpecificGUIComponentStyleFactory.self,
            uiComponentSetStyleFactoryType: AppCompanySpecificGUIComponentSetStyleFactory.self,
            uiComponentGroupStyleFactoryType: AppCompanySpecificGUIComponentGroupStyleFactory.self,
            uiComponentScreenStyleFactoryType: AppCompanySpecificGUIComponentScreenStyleFactory.self
        )
    }
}
