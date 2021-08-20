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
    static func stylePack(for styleType: UIStyleType, overwrittenBy stylePropertiesOverwritten: UIElementComponentStylePropertiesOverwrittenType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType>
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
        return stylePack.styleProperties
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
    
    public static func stylePack(for styleType: UIStyleType, overwrittenBy stylePropertiesOverwritten: UIElementComponentStylePropertiesOverwrittenType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType> {
        guard let pack = Self.stylePack(for: styleType) else {
            let defaultPack: UIElementComponentStylePack<UIElementComponentStylePropertiesType> = .default(styleType: styleType)
            
            guard (stylePropertiesOverwritten.lookParams != nil || stylePropertiesOverwritten.layoutParams != nil) else {
                return defaultPack
            }
            
            return .init(
                pack: defaultPack,
                overwrittenBy: .init(
                    lookSort: defaultPack.styleProperties.lookSort,
                    lookParams: .init(
                        lookParams: defaultPack.styleProperties.lookParams,
                        overwrittenBy: stylePropertiesOverwritten.lookParams
                    ),
                    layoutParams: .init(
                        layoutParams: defaultPack.styleProperties.layoutParams,
                        overwrittenBy: stylePropertiesOverwritten.layoutParams
                    )
                )
            )
        }
        
        let styleProperties = pack.styleProperties
        
        let lookSort: UIElementComponentStylePropertiesLookSort<UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookType>
        if case let .system(look) = styleProperties.lookSort  {
            lookSort = .system(
                .init(
                    look: look,
                    overwrittenBy: stylePropertiesOverwritten.look
                )
            )
        } else {
            lookSort = styleProperties.lookSort
        }
        
        return .init(
            pack: pack,
            overwrittenBy: .init(
                lookSort: lookSort,
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
