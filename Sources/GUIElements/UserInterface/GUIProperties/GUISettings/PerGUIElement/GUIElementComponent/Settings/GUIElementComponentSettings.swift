//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import commons

public protocol GUIElementComponentSettings:
    GUIElementSettings,
    GUIPropertyDefaultValueInterface,
    SelfInstanceOverwrittingInterface {
    
    associatedtype GUIElementComponentParamsType:
        GUIElementComponentParams
    associatedtype GUIElementComponentStylePropertiesType:
        GUIElementComponentStyleProperties
    associatedtype GUIElementComponentStylePropertiesOverwrittenType:
        GUIElementComponentStylePropertiesOverwritten
    
    var params: GUIElementComponentParamsType {
        get
    }
    var style: GUIElementComponentStyle<
        GUIElementComponentStylePropertiesType
    > {
        get
    }
    
    init(
        params: GUIElementComponentParamsType,
        style: GUIElementComponentStyle<
            GUIElementComponentStylePropertiesType
        >
    )
    
    static var style: GUIElementComponentStyle<
        GUIElementComponentStylePropertiesType
    >? {
        get
    }
    static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        GUIElementComponentStylePropertiesType
    >?
    
    static var styleUnwrapped: GUIElementComponentStyle<
        GUIElementComponentStylePropertiesType
    > {
        get
    }
    static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        GUIElementComponentStylePropertiesType
    >
    static func style(
        for styleType: GUIStyleType,
        overwrittenBy stylePropertiesOverwritten: GUIElementComponentStylePropertiesOverwrittenType
    ) -> GUIElementComponentStyle<
        GUIElementComponentStylePropertiesType
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
    
    public var styleProperties: GUIElementComponentStylePropertiesType {
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
        params: GUIElementComponentParamsType
    ) {
        self.init(
            params: params,
            style: Self.styleUnwrapped
        )
    }
    
    public init(
        params: GUIElementComponentParamsType,
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
        params: GUIElementComponentParamsType,
        styleType: GUIStyleType,
        overwrittenBy styleProperties: GUIElementComponentStylePropertiesOverwrittenType
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
    GUIElementComponentStylePropertiesType.GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType.GUIElementComponentStylePropertiesOverwrittenLookType
        == GUIElementComponentStylePropertiesOverwrittenType.GUIElementComponentStylePropertiesOverwrittenLookType,
    GUIElementComponentStylePropertiesType.GUIElementComponentStylePropertiesLookParamsType.GUIElementComponentStylePropertiesOverwrittenLookParamsType
        == GUIElementComponentStylePropertiesOverwrittenType.GUIElementComponentStylePropertiesOverwrittenLookParamsType,
    GUIElementComponentStylePropertiesType.GUIElementComponentStylePropertiesLayoutParamsType.GUIElementComponentStylePropertiesOverwrittenLayoutParamsType
        == GUIElementComponentStylePropertiesOverwrittenType.GUIElementComponentStylePropertiesOverwrittenLayoutParamsType {
    
    public static var styleUnwrapped: GUIElementComponentStyle<
        GUIElementComponentStylePropertiesType
    > {
        return style ?? .default
    }
    
    public static func style(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyle<
        GUIElementComponentStylePropertiesType
    > {
        return style(
            for: styleType
        ) ?? .default(
            styleType: styleType
        )
    }
    
    public static func style(
        for styleType: GUIStyleType,
        overwrittenBy stylePropertiesOverwritten: GUIElementComponentStylePropertiesOverwrittenType
    ) -> GUIElementComponentStyle<
        GUIElementComponentStylePropertiesType
    > {
        guard let style = style(
            for: styleType
        )
        else {
            let defaultStyle: GUIElementComponentStyle<
                GUIElementComponentStylePropertiesType
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
            GUIElementComponentStylePropertiesType.GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType,
            GUIElementComponentStylePropertiesType.GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
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
