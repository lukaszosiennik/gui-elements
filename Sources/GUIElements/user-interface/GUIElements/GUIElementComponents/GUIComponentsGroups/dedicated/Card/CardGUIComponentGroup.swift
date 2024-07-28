//
//  Created by Łukasz Osiennik on 24/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public final class CardGUIComponentGroup<
    BodyGUIElementComponentType:
        GUIElementComponent
>:
    CardGUIComponentGroupBasis<
        BodyGUIElementComponentType,
        BodyGUIElementComponentType.Settings
    > {

    override func setupBodyNestedSettings() {
        bodyContainerContent.settings = settings.bodySettings
    }
}
