//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct LabelUIComponentSettings: UIComponentSettings {

    public typealias UIElementComponentStylePropertiesOverwrittenType = LabelUIComponentStylePropertiesOverwritten

    public let params: LabelUIComponentParams
    public var style: UIElementComponentStyle<LabelUIComponentStyleProperties>
    
    public init(params: LabelUIComponentParams, style: UIElementComponentStyle<LabelUIComponentStyleProperties>) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<LabelUIComponentStyleProperties>? {
        return styleFactory?.label()
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<LabelUIComponentStyleProperties>? {
        return styleFactory(for: styleType)?.label()
    }
}
