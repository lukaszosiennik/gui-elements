//
//  Created by Łukasz Osiennik on 02/10/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIComponentSettings: UIElementComponentSettings where
    UIElementComponentParamsType: UIComponentParams,
    UIElementComponentStylePropertiesType: UIComponentStyleProperties {
    
    associatedtype UIComponentStylePropertiesOverwrittenType: UIComponentStylePropertiesOverwritten
    
    init(params: UIElementComponentParamsType, styleType: UIStyleType, overwrittenBy styleProperties: UIComponentStylePropertiesOverwrittenType)
    
    static var stylePackFactory: UIComponentStyleFactoryInterface? { get }
    static func stylePackFactory(for styleType: UIStyleType) -> UIComponentStyleFactoryInterface?
    
    static var stylePack: UIElementComponentStylePack<UIElementComponentStylePropertiesType>? { get }
    static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType>?
    static func stylePack(for styleType: UIStyleType, overwrittenBy styleProperties: UIComponentStylePropertiesOverwrittenType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType>
}

extension UIComponentSettings where
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookType.UIElementComponentStylePropertiesOverwrittenLookType == UIComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLookType,
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookParamsType.UIElementComponentStylePropertiesOverwrittenLookParamsType == UIComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLookParamsType,
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLayoutParamsType.UIElementComponentStylePropertiesOverwrittenLayoutParamsType == UIComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLayoutParamsType {
    
    public init(params: UIElementComponentParamsType) {
        self.init(
            params: params,
            stylePack: Self.stylePack
        )
    }
    
    public init(params: UIElementComponentParamsType, styleType: UIStyleType) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType)
        )
    }
}

extension UIComponentSettings where
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookType.UIElementComponentStylePropertiesOverwrittenLookType == UIComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLookType,
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookParamsType.UIElementComponentStylePropertiesOverwrittenLookParamsType == UIComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLookParamsType,
    UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLayoutParamsType.UIElementComponentStylePropertiesOverwrittenLayoutParamsType == UIComponentStylePropertiesOverwrittenType.UIElementComponentStylePropertiesOverwrittenLayoutParamsType {
    
    public init(params: UIElementComponentParamsType, styleType: UIStyleType, overwrittenBy styleProperties: UIComponentStylePropertiesOverwrittenType) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType, overwrittenBy: styleProperties)
        )
    }
    
    public static var stylePackFactory: UIComponentStyleFactoryInterface? {
        return styleFactory?.uiComponent
    }
    
    public static func stylePackFactory(for styleType: UIStyleType) -> UIComponentStyleFactoryInterface? {
        return styleFactory(for: styleType)?.uiComponent
    }
    
    public static var stylePack: UIElementComponentStylePack<UIElementComponentStylePropertiesType> {
        return Self.stylePack ?? .default
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType> {
        return Self.stylePack(for: styleType) ?? .default(styleType: styleType)
    }
    
    public static func stylePack(for styleType: UIStyleType, overwrittenBy styleProperties: UIComponentStylePropertiesOverwrittenType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType> {
        guard let pack = Self.stylePack(for: styleType) else {
            let defaultPack: UIElementComponentStylePack<UIElementComponentStylePropertiesType> = .default(styleType: styleType)
            
            guard let lookParams = styleProperties.lookParams else {
                return defaultPack
            }
            
            return .init(
                pack: defaultPack,
                overwrittenBy: .init(
                    look: nil,
                    lookParams: .init(
                        lookParams: nil,
                        overwrittenBy: lookParams
                    ),
                    layoutParams: nil
                )
            )
        }
        
        guard let properties = pack.style.properties else {
            return pack
        }
        
        return .init(
            pack: pack,
            overwrittenBy: .init(
                look: .init(
                    look: properties.look,
                    overwrittenBy: styleProperties.look
                ),
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
