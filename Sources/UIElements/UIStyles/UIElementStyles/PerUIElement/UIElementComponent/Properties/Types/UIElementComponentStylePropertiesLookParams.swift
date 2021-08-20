//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStylePropertiesLookParams: UIElementStylePropertiesLookParams {
    
    associatedtype UIElementComponentStylePropertiesOverwrittenLookParamsType: UIElementComponentStylePropertiesOverwrittenLookParams
    
    static var `default`: Self? { get }

    init?(lookParams: Self?, overwrittenBy newLookParams: UIElementComponentStylePropertiesOverwrittenLookParamsType?)
}

extension UIElementComponentStylePropertiesLookParams {
    
    public static var `default`: Self? {
        return nil
    }
}
