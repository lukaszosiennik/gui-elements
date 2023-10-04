//
//  Created by Łukasz Osiennik on 24/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class CardWithUIViewBodyGUIComponentGroup<
    BodyViewType:
        UIView
>:
    CardGUIComponentGroupBasis<
        BodyViewType,
        EmptyGUIComponentSettings
    > {
    
    public var bodyView: BodyViewType {
        return bodyContainerContent
    }
}
