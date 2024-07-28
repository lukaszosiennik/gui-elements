//
//  Created by Łukasz Osiennik on 24/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct EmptyGUIComponentSettings:
    GUIComponentSettings {

    public typealias StylePropertiesOverwritten =
        EmptyGUIComponentStylePropertiesOverwritten
    
    public let params: EmptyGUIComponentParams
    public var style: GUIElementComponentStyle<
        EmptyGUIComponentStyleProperties
    >
    
    public init(
        params: EmptyGUIComponentParams,
        style: GUIElementComponentStyle<
            EmptyGUIComponentStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: GUIElementComponentStyle<
        EmptyGUIComponentStyleProperties
    >? {
        return nil
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        EmptyGUIComponentStyleProperties
    >? {
        return nil
    }
}
