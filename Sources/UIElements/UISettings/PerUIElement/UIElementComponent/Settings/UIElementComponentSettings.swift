//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentSettings: UIElementSettings {
    
    associatedtype UIElementComponentParamsType: UIElementComponentParams
    associatedtype UIElementComponentStylePropertiesType: UIElementComponentStyleProperties
    associatedtype UIElementComponentStylePropertiesOverwrittenType: UIElementComponentStylePropertiesOverwritten
    
    var params: UIElementComponentParamsType { get }
    var stylePack: UIElementComponentStylePack<UIElementComponentStylePropertiesType> { get set }
    
    init(params: UIElementComponentParamsType, stylePack: UIElementComponentStylePack<UIElementComponentStylePropertiesType>)
    
    static var stylePack: UIElementComponentStylePack<UIElementComponentStylePropertiesType>? { get }
    static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType>?
    
    static var stylePackUnwrapped: UIElementComponentStylePack<UIElementComponentStylePropertiesType> { get }
    static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType>
    static func stylePack(for styleType: UIStyleType, overwrittenBy styleProperties: UIElementComponentStylePropertiesOverwrittenType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType>
}

extension UIElementComponentSettings {
    
    public var styleType: UIStyleType {
        get {
            return stylePack.factory?.styleType ?? stylePack.style.type
        }
        set {
            stylePack = Self.stylePack(for: newValue)
        }
    }
    
    public var styleProperties: UIElementComponentStylePropertiesType {
        return stylePack.style.properties
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
            stylePack: Self.stylePackUnwrapped
        )
    }
    
    public init(params: UIElementComponentParamsType, styleType: UIStyleType) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType)
        )
    }
    
    public init(params: UIElementComponentParamsType, styleType: UIStyleType, overwrittenBy styleProperties: UIElementComponentStylePropertiesOverwrittenType) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType, overwrittenBy: styleProperties)
        )
    }
}

extension UIElementComponentSettings {
    
    public static var styleFactory: UIElementComponentStyleFactoryInterface? {
        return styleFactoryProvider.currentFactory
    }
    public static func styleFactory(for styleType: UIStyleType) -> UIElementComponentStyleFactoryInterface? {
        return styleFactoryProvider.factory(for: styleType)
    }
    
    static private var styleFactoryProvider: UIElementComponentStyleFactoryProviderInterface.Type {
        return UIElementComponentStyleFactoryProvider.self
    }
}

extension UIElementComponentSettings where
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookType.UIElementComponentStylePropertiesOverwrittenLookType == UIElementComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLookType,
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookParamsType.UIElementComponentStylePropertiesOverwrittenLookParamsType == UIElementComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLookParamsType,
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLayoutParamsType.UIElementComponentStylePropertiesOverwrittenLayoutParamsType == UIElementComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLayoutParamsType {
    
    public static var stylePackUnwrapped: UIElementComponentStylePack<UIElementComponentStylePropertiesType> {
        return Self.stylePack ?? .default
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType> {
        return Self.stylePack(for: styleType) ?? .default(styleType: styleType)
    }
    
    public static func stylePack(for styleType: UIStyleType, overwrittenBy styleProperties: UIElementComponentStylePropertiesOverwrittenType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType> {
        guard let pack = Self.stylePack(for: styleType) else {
            let defaultPack: UIElementComponentStylePack<UIElementComponentStylePropertiesType> = .default(styleType: styleType)
            
            guard (styleProperties.lookParams != nil || styleProperties.layoutParams != nil) else {
                return defaultPack
            }
            
            return .init(
                pack: defaultPack,
                overwrittenBy: .init(
                    lookSort: defaultPack.style.properties.lookSort,
                    lookParams: .init(
                        lookParams: defaultPack.style.properties.lookParams,
                        overwrittenBy: styleProperties.lookParams
                    ),
                    layoutParams: .init(
                        layoutParams: defaultPack.style.properties.layoutParams,
                        overwrittenBy: styleProperties.layoutParams
                    )
                )
            )
        }
        
        let properties = pack.style.properties
        
        let lookSort: UIElementComponentStylePropertiesLookSort<UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookType>
        if case let .system(look) = properties.lookSort, let look: UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookType = .init(look: look, overwrittenBy: styleProperties.look) {
            lookSort = .system(look)
        } else {
            lookSort = properties.lookSort
        }
        
        return .init(
            pack: pack,
            overwrittenBy: .init(
                lookSort: lookSort,
                lookParams: .init(
                    lookParams: properties.lookParams,
                    overwrittenBy: styleProperties.lookParams
                ),
                layoutParams: .init(
                    layoutParams: properties.layoutParams,
                    overwrittenBy: styleProperties.layoutParams
                )
            )
        )
    }
}
