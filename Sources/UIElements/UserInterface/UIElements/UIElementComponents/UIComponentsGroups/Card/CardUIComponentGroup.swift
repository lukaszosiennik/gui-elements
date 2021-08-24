//
//  Created by Łukasz Osiennik on 24/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class CardUIComponentGroup<BodyContainerContentType: UIElementComponent>: CardUIComponentGroupBasis<BodyContainerContentType, BodyContainerContentType.UIElementComponentSettingsType> {

    public override func setupNestedSettings() {
        super.setupNestedSettings()
        
        bodyContainerContent.settings = settings.bodyContainerContentSettings
    }
}
