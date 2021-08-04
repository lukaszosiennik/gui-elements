//
//  Created by Łukasz Osiennik on 31/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UILayoutSettings: UIElementSettings {
    
    associatedtype UILayoutStylePropertiesType: UILayoutStyleProperties
    
    var stylePack: UILayoutStylePack<UILayoutStylePropertiesType> { get set }
    
    init()
    init(styleType: UIStyleType)
    init(stylePack: UILayoutStylePack<UILayoutStylePropertiesType>)
    
    static func stylePack(for styleType: UIStyleType) -> UILayoutStylePack<UILayoutStylePropertiesType>
}

extension UILayoutSettings {
    
    public var styleType: UIStyleType {
        get {
            return stylePack.factory?.styleType ?? stylePack.style.type
        }
        set {
            stylePack = Self.stylePack(for: newValue)
        }
    }
    
    static var `default`: Self {
        return .init()
    }
}
