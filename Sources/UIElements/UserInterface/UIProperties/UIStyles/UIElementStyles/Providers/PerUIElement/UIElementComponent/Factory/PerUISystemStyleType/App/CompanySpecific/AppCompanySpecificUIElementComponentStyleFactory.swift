//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class AppCompanySpecificUIElementComponentStyleFactory:
    UIElementComponentStyleFactoryBasis {
    
    init() {
        super.init(
            styleType: .system(.app(.companySpecific)),
            uiComponentStyleFactoryType: AppCompanySpecificUIComponentStyleFactory.self,
            uiComponentSetStyleFactoryType: AppCompanySpecificUIComponentSetStyleFactory.self,
            uiComponentGroupStyleFactoryType: AppCompanySpecificUIComponentGroupStyleFactory.self,
            uiComponentScreenStyleFactoryType: AppCompanySpecificUIComponentScreenStyleFactory.self
        )
    }
}
