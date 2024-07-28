//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public struct CardGUIComponentGroupSettings<
    BodyGUIElementComponentSettingsType:
        GUIElementComponentSettings
>:
    GUIComponentGroupSettings {

    public typealias StylePropertiesOverwritten =
        EmptyGUIComponentGroupStylePropertiesOverwritten
    
    public let params: CardGUIComponentGroupParams
    public var style: GUIElementComponentStyle<
        CardGUIComponentGroupStyleProperties
    >

    public let bodySettings: BodyGUIElementComponentSettingsType
    
    public var styleType: GUIStyleType {
        get {
            return style.type
        }
        set {
            selfOverwrite(
                with: .init(
                    params: params,
                    styleType: newValue,
                    bodySettingsParams: bodySettings.params
                )
            )
        }
    }
    
    public init(
        params: CardGUIComponentGroupParams,
        style: GUIElementComponentStyle<
            CardGUIComponentGroupStyleProperties
        >
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
        params: CardGUIComponentGroupParams,
        styleType: GUIStyleType,
        bodySettingsParams: BodyGUIElementComponentSettingsType.Params
    ) {
        self.init(
            params: params,
            style: Self.style(
                for: styleType
            ),
            bodySettings: .init(
                params: bodySettingsParams,
                styleType: styleType
            )
        )
    }
    
    private init(
        params: CardGUIComponentGroupParams,
        style: GUIElementComponentStyle<
            CardGUIComponentGroupStyleProperties
        >,
        bodySettings: BodyGUIElementComponentSettingsType
    ) {
        self.params = params
        self.style = style
        self.bodySettings = bodySettings
    }
    
    public static var style: GUIElementComponentStyle<
        CardGUIComponentGroupStyleProperties
    >? {
        return styleFactory?.card()
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        CardGUIComponentGroupStyleProperties
    >? {
        return styleFactory(
            for: styleType
        )?.card()
    }
}
