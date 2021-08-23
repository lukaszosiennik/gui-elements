//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelUIComponentSettings: UIComponentSettings {    

    public typealias UIElementComponentStylePropertiesOverwrittenType = LabelUIComponentStylePropertiesOverwritten

    public let params: LabelUIComponentParams
    public var stylePack: UIElementComponentStylePack<LabelUIComponentStyleProperties>
    
    public init(params: LabelUIComponentParams, stylePack: UIElementComponentStylePack<LabelUIComponentStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static var stylePack: UIElementComponentStylePack<LabelUIComponentStyleProperties>? {
        return Self.stylePackFactory?.label()
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<LabelUIComponentStyleProperties>? {
        return Self.stylePackFactory(for: styleType)?.label()
    }
}
