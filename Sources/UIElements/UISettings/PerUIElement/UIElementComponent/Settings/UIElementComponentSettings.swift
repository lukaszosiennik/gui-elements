//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponentSettings: UIElementSettings {
    
    associatedtype UIElementComponentParamsType: UIElementComponentParams
    associatedtype UIElementComponentStylePropertiesType: UIElementComponentStyleProperties
    
    var params: UIElementComponentParamsType { get set }
    var stylePack: UIElementComponentStylePack<UIElementComponentStylePropertiesType> { get set }
    
    init(params: UIElementComponentParamsType)
    init(params: UIElementComponentParamsType, styleType: UIStyleType)
    init(params: UIElementComponentParamsType, stylePack: UIElementComponentStylePack<UIElementComponentStylePropertiesType>)
    
    static var styleFactory: UIElementComponentStyleFactoryInterface? { get }
    static func styleFactory(for styleType: UIStyleType) -> UIElementComponentStyleFactoryInterface?
    
    static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<UIElementComponentStylePropertiesType>
}

extension UIElementComponentSettings {
    
    public static var `default`: Self {
        return .init(
            params: .default
        )
    }
    
    public var styleType: UIStyleType {
        get {
            return stylePack.factory?.styleType ?? stylePack.style.type
        }
        set {
            stylePack = Self.stylePack(for: newValue)
        }
    }
    
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
