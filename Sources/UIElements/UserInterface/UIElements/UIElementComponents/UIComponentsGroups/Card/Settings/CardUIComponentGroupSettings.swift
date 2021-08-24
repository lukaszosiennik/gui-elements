//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CardUIComponentGroupSettings<BodyUIElementComponentSettingsType: UIElementComponentSettings>: UIComponentGroupSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentGroupStylePropertiesOverwritten
    
    public let params: CardUIComponentGroupParams
    public var style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>

    public let bodySettings: BodyUIElementComponentSettingsType
    
    public init(params: CardUIComponentGroupParams, style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>) {
        self.init(
            params: params,
            bodySettingsParams: .default,
            style: style
        )
    }
    
    public init(params: CardUIComponentGroupParams, bodySettingsParams: BodyUIElementComponentSettingsType.UIElementComponentParamsType, style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>) {
        self.params = params
        self.bodySettings = .init(
            params: bodySettingsParams,
            styleType: style.type
        )
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>? {
        return styleFactory?.card()
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<CardUIComponentGroupStyleProperties>? {
        return styleFactory(for: styleType)?.card()
    }
}
