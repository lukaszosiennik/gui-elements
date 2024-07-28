//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct PlaceholderGUIComponentSettings:
    GUIComponentSettings {
    
    public typealias StylePropertiesOverwritten =
        EmptyGUIComponentStylePropertiesOverwritten
    
    public let params: PlaceholderGUIComponentParams
    public var style: GUIElementComponentStyle<
        PlaceholderGUIComponentStyleProperties
    >
    
    public init(
        params: PlaceholderGUIComponentParams,
        style: GUIElementComponentStyle<
            PlaceholderGUIComponentStyleProperties
        >
    ) {
        self.params = params
        self.style = style
    }
    
    public static var style: GUIElementComponentStyle<
        PlaceholderGUIComponentStyleProperties
    >? {
        return styleFactory?.placeholder()
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        PlaceholderGUIComponentStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.placeholder()
    }
}
