//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

import commons

public protocol GUIElementComponentSettings:
    GUIElementSettings,
    GUIPropertyDefaultValueInterface,
    SelfInstanceOverwrittingInterface {
    
    associatedtype Params:
        GUIElementComponentParams
    associatedtype StyleProperties:
        GUIElementComponentStyleProperties
    associatedtype StylePropertiesOverwritten:
        GUIElementComponentStylePropertiesOverwritten
    
    var params: Params {
        get
    }
    var style: GUIElementComponentStyle<
        StyleProperties
    > {
        get
    }
    
    init(
        params: Params,
        style: GUIElementComponentStyle<
            StyleProperties
        >
    )
    
    static var style: GUIElementComponentStyle<
        StyleProperties
    >? {
        get
    }
    static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        StyleProperties
    >?
    
    static var styleUnwrapped: GUIElementComponentStyle<
        StyleProperties
    > {
        get
    }
    static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        StyleProperties
    >
    static func style(
        for styleType: GUIStyleType,
        overwrittenBy stylePropertiesOverwritten: StylePropertiesOverwritten
    ) -> GUIElementComponentStyle<
        StyleProperties
    >
}

extension GUIElementComponentSettings {
    
    public var styleType: GUIStyleType {
        get {
            return style.type
        }
        set {
            selfOverwrite(
                with: .init(
                    params: params,
                    style: Self.style(
                        for: newValue
                    )
                )
            )
        }
    }
    
    public var styleProperties: StyleProperties {
        return style.properties
    }
}

extension GUIElementComponentSettings {
    
    public static var `default`: Self {
        return .init(
            params: .default
        )
    }
    
    public init(
        params: Params
    ) {
        self.init(
            params: params,
            style: Self.styleUnwrapped
        )
    }
    
    public init(
        params: Params,
        styleType: GUIStyleType
    ) {
        self.init(
            params: params,
            style: Self.style(
                for: styleType
            )
        )
    }
    
    public init(
        params: Params,
        styleType: GUIStyleType,
        overwrittenBy styleProperties: StylePropertiesOverwritten
    ) {
        self.init(
            params: params,
            style: Self.style(
                for: styleType,
                overwrittenBy: styleProperties
            )
        )
    }
}

extension GUIElementComponentSettings {
    
    public static var mainStyleFactory: GUIElementComponentStyleFactoryInterface? {
        return styleFactoryProvider.currentFactory
    }
    public static func mainStyleFactory(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyleFactoryInterface? {
        return styleFactoryProvider.factory(
            for: styleType
        )
    }
    
    static private var styleFactoryProvider: GUIElementComponentStyleFactoryProviderInterface.Type {
        return GUIElementComponentStyleFactoryProvider.self
    }
}

extension GUIElementComponentSettings
where
    StyleProperties.Look.SystemLook.OverwrittenLook
        == StylePropertiesOverwritten.Look,
    StyleProperties.LookParams.OverwrittenLookParams
        == StylePropertiesOverwritten.LookParams,
    StyleProperties.LayoutParams.OverwrittenLayoutParams
        == StylePropertiesOverwritten.LayoutParams {
    
    public static var styleUnwrapped: GUIElementComponentStyle<
        StyleProperties
    > {
        return style ?? .default
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        StyleProperties
    > {
        return style(
            for: styleType
        ) ?? .default(
            styleType: styleType
        )
    }
    
    public static func style(
        for styleType: GUIStyleType,
        overwrittenBy stylePropertiesOverwritten: StylePropertiesOverwritten
    ) -> GUIElementComponentStyle<
        StyleProperties
    > {
        guard let style = style(
            for: styleType
        )
        else {
            let defaultStyle: GUIElementComponentStyle<
                StyleProperties
            > = .default(
                styleType: styleType
            )
            
            guard (stylePropertiesOverwritten.lookParams != nil || stylePropertiesOverwritten.layoutParams != nil)
            else {
                return defaultStyle
            }
            
            return .init(
                style: defaultStyle,
                overwrittenBy: .init(
                    lookType: defaultStyle.properties.lookType,
                    lookParams: .init(
                        lookParams: defaultStyle.properties.lookParams,
                        overwrittenBy: stylePropertiesOverwritten.lookParams
                    ),
                    layoutParams: .init(
                        layoutParams: defaultStyle.properties.layoutParams,
                        overwrittenBy: stylePropertiesOverwritten.layoutParams
                    )
                )
            )
        }
        
        let styleProperties = style.properties
        
        let lookType: GUIElementComponentStylePropertiesLookType<
            StyleProperties.Look.OSLook,
            StyleProperties.Look.SystemLook
        >
        if case let .system(look) = styleProperties.lookType {
            lookType = .system(.init(
                look: look,
                overwrittenBy: stylePropertiesOverwritten.look
            ))
        } else {
            lookType = styleProperties.lookType
        }
        
        return .init(
            style: style,
            overwrittenBy: .init(
                lookType: lookType,
                lookParams: .init(
                    lookParams: styleProperties.lookParams,
                    overwrittenBy: stylePropertiesOverwritten.lookParams
                ),
                layoutParams: .init(
                    layoutParams: styleProperties.layoutParams,
                    overwrittenBy: stylePropertiesOverwritten.layoutParams
                )
            )
        )
    }
}
