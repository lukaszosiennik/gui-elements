//
//  Created by Łukasz Osiennik on 31/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public protocol GUILayoutSettings:
    GUIElementSettings,
    GUIPropertyDefaultValueInterface {
    
    associatedtype StyleProperties:
        GUILayoutStyleProperties
    
    var stylePack: GUILayoutStylePack<
        StyleProperties
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
            StyleProperties
        >
    )
    
    static func stylePack(
        for styleType: GUIStyleType
    ) -> GUILayoutStylePack<
        StyleProperties
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
