//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CardUIComponentGroupSettings<
    BodyUIElementComponentSettingsType: UIElementComponentSettings
>: UIComponentGroupSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentGroupStylePropertiesOverwritten
    
    public let params: CardUIComponentGroupParams
    public var style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>

    public let bodySettings: BodyUIElementComponentSettingsType
    
    public init(
        params: CardUIComponentGroupParams,
        style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>
    ) {
        self.init(
            params: params,
            style: style,
            bodySettings: .init(
                params: .default,
                styleType: style.type
            )
        )
    }
    
    public init(
        params: CardUIComponentGroupParams,
        styleType: UIStyleType,
        bodySettingsParams: BodyUIElementComponentSettingsType.UIElementComponentParamsType
    ) {
        self.init(
            params: params,
            style: Self.style(for: styleType),
            bodySettings: .init(
                params: bodySettingsParams,
                styleType: styleType
            )
        )
    }
    
    private init(
        params: CardUIComponentGroupParams,
        style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>,
        bodySettings: BodyUIElementComponentSettingsType
    ) {
        self.params = params
        self.style = style
        self.bodySettings = bodySettings
    }
    
    public static var style: UIElementComponentStyle<CardUIComponentGroupStyleProperties>? {
        return styleFactory?.card()
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<CardUIComponentGroupStyleProperties>? {
        return styleFactory(for: styleType)?.card()
    }
}
