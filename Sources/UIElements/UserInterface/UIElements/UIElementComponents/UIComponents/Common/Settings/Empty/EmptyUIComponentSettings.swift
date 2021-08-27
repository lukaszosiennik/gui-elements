//
//  Created by Łukasz Osiennik on 24/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct EmptyUIComponentSettings: UIComponentSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentStylePropertiesOverwritten
    
    public let params: EmptyUIComponentParams
    public var style: UIElementComponentStyle<EmptyUIComponentStyleProperties>
    
    public init(
        params: EmptyUIComponentParams,
        style: UIElementComponentStyle<EmptyUIComponentStyleProperties>
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<EmptyUIComponentStyleProperties>? {
        return nil
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<EmptyUIComponentStyleProperties>? {
        return nil
    }
}
