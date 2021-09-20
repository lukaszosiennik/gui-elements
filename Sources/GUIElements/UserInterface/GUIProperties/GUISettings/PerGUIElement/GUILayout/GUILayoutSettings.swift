//
//  Created by Łukasz Osiennik on 31/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUILayoutSettings:
    GUIElementSettings,
    GUIPropertyDefaultValueInterface {
    
    associatedtype GUILayoutStylePropertiesType:
        GUILayoutStyleProperties
    
    var stylePack: GUILayoutStylePack<
        GUILayoutStylePropertiesType
    > {
        get
        set
    }
    
    init()
    init(
        styleType: GUIStyleType
    )
    init(
        stylePack: GUILayoutStylePack<
            GUILayoutStylePropertiesType
        >
    )
    
    static func stylePack(
        for styleType: GUIStyleType
    ) -> GUILayoutStylePack<
        GUILayoutStylePropertiesType
    >
}

extension GUILayoutSettings {
    
    public var styleType: GUIStyleType {
        get {
            return stylePack.factory?.styleType ?? stylePack.style.type
        }
        set {
            stylePack = Self.stylePack(
                for: newValue
            )
        }
    }
}

extension GUILayoutSettings {
    
    static var `default`: Self {
        return .init()
    }
}
