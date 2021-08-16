//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentStylePropertiesLookParams: UIElementComponentStylePropertiesLookParams {
    
    associatedtype UIComponentStylePropertiesOverwrittenLookParamsType: UIComponentStylePropertiesOverwrittenLookParams

    init?(lookParams: Self?, overwrittenBy newLookParams: UIComponentStylePropertiesOverwrittenLookParamsType?)
}
