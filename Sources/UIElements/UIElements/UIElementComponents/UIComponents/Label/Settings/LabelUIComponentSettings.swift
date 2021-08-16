//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelUIComponentSettings: UIComponentSettings {

    public let params: LabelUIComponentParams
    public var stylePack: UIElementComponentStylePack<LabelUIComponentStyleProperties>
    
    public init(params: LabelUIComponentParams) {
        self.init(
            params: params,
            stylePack: Self.stylePackFactory?.label() ?? .default
        )
    }
    
    public init(params: LabelUIComponentParams, styleType: UIStyleType) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType)
        )
    }
    
    public init(params: LabelUIComponentParams, styleType: UIStyleType, overwrittenBy styleProperties: LabelUIComponentStylePropertiesOverwritten) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType, overwrittenBy: styleProperties)
        )
    }
    
    public init(params: LabelUIComponentParams, stylePack: UIElementComponentStylePack<LabelUIComponentStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<LabelUIComponentStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.label() ?? .default(styleType: styleType)
    }
    
    public static func stylePack(for styleType: UIStyleType, overwrittenBy styleProperties: LabelUIComponentStylePropertiesOverwritten) -> UIElementComponentStylePack<LabelUIComponentStyleProperties> {
        guard let pack = Self.stylePackFactory(for: styleType)?.label() else {
            let defaultPack: UIElementComponentStylePack<LabelUIComponentStyleProperties> = .default(styleType: styleType)
            
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
