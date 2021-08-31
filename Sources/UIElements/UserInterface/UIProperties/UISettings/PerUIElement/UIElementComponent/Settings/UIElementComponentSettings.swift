//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentSettings:
    UIElementSettings,
    UIPropertyDefaultValueInterface {
    
    associatedtype UIElementComponentParamsType: UIElementComponentParams
    associatedtype UIElementComponentStylePropertiesType: UIElementComponentStyleProperties
    associatedtype UIElementComponentStylePropertiesOverwrittenType: UIElementComponentStylePropertiesOverwritten
    
    var params: UIElementComponentParamsType { get }
    var style: UIElementComponentStyle<UIElementComponentStylePropertiesType> { get set }
    
    init(
        params: UIElementComponentParamsType,
        style: UIElementComponentStyle<UIElementComponentStylePropertiesType>
    )
    
    static var style: UIElementComponentStyle<UIElementComponentStylePropertiesType>? { get }
    static func style(for styleType: UIStyleType) -> UIElementComponentStyle<UIElementComponentStylePropertiesType>?
    
    static var styleUnwrapped: UIElementComponentStyle<UIElementComponentStylePropertiesType> { get }
    static func style(for styleType: UIStyleType) -> UIElementComponentStyle<UIElementComponentStylePropertiesType>
    static func style(
        for styleType: UIStyleType,
        overwrittenBy stylePropertiesOverwritten: UIElementComponentStylePropertiesOverwrittenType
    ) -> UIElementComponentStyle<UIElementComponentStylePropertiesType>
}

extension UIElementComponentSettings {
    
    public var styleType: UIStyleType {
        get {
            return style.type
        }
        set {
            style = Self.style(for: newValue)
        }
    }
    
    public var styleProperties: UIElementComponentStylePropertiesType {
        return style.properties
    }
}

extension UIElementComponentSettings {
    
    public static var `default`: Self {
        return .init(
            params: .default
        )
    }
    
    public init(params: UIElementComponentParamsType) {
        self.init(
            params: params,
            style: Self.styleUnwrapped
        )
    }
    
    public init(
        params: UIElementComponentParamsType,
        styleType: UIStyleType
    ) {
        self.init(
            params: params,
            style: Self.style(for: styleType)
        )
    }
    
    public init(
        params: UIElementComponentParamsType,
        styleType: UIStyleType,
        overwrittenBy styleProperties: UIElementComponentStylePropertiesOverwrittenType
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

extension UIElementComponentSettings {
    
    public static var mainStyleFactory: UIElementComponentStyleFactoryInterface? {
        return styleFactoryProvider.currentFactory
    }
    public static func mainStyleFactory(for styleType: UIStyleType) -> UIElementComponentStyleFactoryInterface? {
        return styleFactoryProvider.factory(for: styleType)
    }
    
    static private var styleFactoryProvider: UIElementComponentStyleFactoryProviderInterface.Type {
        return UIElementComponentStyleFactoryProvider.self
    }
}

extension UIElementComponentSettings where
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesSystemLookType.UIElementComponentStylePropertiesOverwrittenLookType == UIElementComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLookType,
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookParamsType.UIElementComponentStylePropertiesOverwrittenLookParamsType == UIElementComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLookParamsType,
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLayoutParamsType.UIElementComponentStylePropertiesOverwrittenLayoutParamsType == UIElementComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLayoutParamsType {
    
    public static var styleUnwrapped: UIElementComponentStyle<UIElementComponentStylePropertiesType> {
        return style ?? .default
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<UIElementComponentStylePropertiesType> {
        return style(for: styleType) ?? .default(styleType: styleType)
    }
    
    public static func style(
        for styleType: UIStyleType,
        overwrittenBy stylePropertiesOverwritten: UIElementComponentStylePropertiesOverwrittenType
    ) -> UIElementComponentStyle<UIElementComponentStylePropertiesType> {
        guard let style = style(for: styleType)
        else {
            let defaultStyle: UIElementComponentStyle<UIElementComponentStylePropertiesType> = .default(
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
        
        let lookType: UIElementComponentStylePropertiesLookType<
            UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesOSLookType,
            UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookInterfaceType.UIElementComponentStylePropertiesSystemLookType
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
