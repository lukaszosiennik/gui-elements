//
//  Created by Łukasz Osiennik on 13/08/2021.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct EmptyUIComponentStylePropertiesLookParams: UIComponentStylePropertiesLookParams {
    
    init() {}
    
    public init?(lookParams: Self?, overwrittenBy newLookParams: EmptyUIComponentStylePropertiesOverwrittenLookParams?) {
        return nil
    }
}

public struct EmptyUIComponentSetStylePropertiesLookParams: UIComponentSetStylePropertiesLookParams {}
public struct EmptyUIComponentGroupStylePropertiesLookParams: UIComponentGroupStylePropertiesLookParams {}
public struct EmptyUIComponentScreenStylePropertiesLookParams: UIComponentScreenStylePropertiesLookParams {}
