//
//  Created by Łukasz Osiennik on 27/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentStylePropertiesLookInterface {
    
    associatedtype UIElementComponentStylePropertiesOSLookType: UIElementComponentStylePropertiesOSLook
    associatedtype UIElementComponentStylePropertiesSystemLookType: UIElementComponentStylePropertiesSystemLook
}

public protocol UIComponentStylePropertiesLookInterface: UIElementComponentStylePropertiesLookInterface where
    UIElementComponentStylePropertiesOSLookType: UIComponentStylePropertiesOSLook,
    UIElementComponentStylePropertiesSystemLookType: UIComponentStylePropertiesSystemLook {}

public protocol UIComponentSetStylePropertiesLookInterface: UIElementComponentStylePropertiesLookInterface where
    UIElementComponentStylePropertiesSystemLookType: UIComponentSetStylePropertiesLook {}

public protocol UIComponentGroupStylePropertiesLookInterface: UIElementComponentStylePropertiesLookInterface where
    UIElementComponentStylePropertiesSystemLookType: UIComponentGroupStylePropertiesLook {}

public protocol UIComponentScreenStylePropertiesLookInterface: UIElementComponentStylePropertiesLookInterface where
    UIElementComponentStylePropertiesSystemLookType: UIComponentScreenStylePropertiesLook {}

public struct UIComponentStylePropertiesLookTemplate<
    UIElementComponentStylePropertiesOSLookType: UIComponentStylePropertiesOSLook,
    UIElementComponentStylePropertiesSystemLookType: UIComponentStylePropertiesSystemLook
>: UIComponentStylePropertiesLookInterface {}

public struct UIComponentSetStylePropertiesLookTemplate<
    UIElementComponentStylePropertiesOSLookType: UIElementComponentStylePropertiesOSLook,
    UIElementComponentStylePropertiesSystemLookType: UIComponentSetStylePropertiesLook
>: UIComponentSetStylePropertiesLookInterface {}

public struct UIComponentGroupStylePropertiesLookTemplate<
    UIElementComponentStylePropertiesOSLookType: UIElementComponentStylePropertiesOSLook,
    UIElementComponentStylePropertiesSystemLookType: UIComponentGroupStylePropertiesLook
>: UIComponentGroupStylePropertiesLookInterface {}

public struct UIComponentScreenStylePropertiesLookTemplate<
    UIElementComponentStylePropertiesOSLookType: UIElementComponentStylePropertiesOSLook,
    UIElementComponentStylePropertiesSystemLookType: UIComponentScreenStylePropertiesLook
>: UIComponentScreenStylePropertiesLookInterface {}
