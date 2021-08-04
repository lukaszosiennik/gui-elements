//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct LabelUIComponentSettings: UIComponentSettings {

    var params: LabelUIComponentParams
    var stylePack: UIElementComponentStylePack<LabelUIComponentStyleProperties>
    
    init(params: LabelUIComponentParams) {
        self.init(params: params, stylePack: Self.stylePackFactory?.label() ?? .default)
    }
    
    init(params: LabelUIComponentParams, styleType: UIStyleType) {
        self.init(params: params, stylePack: Self.stylePack(for: styleType))
    }
    
    init(params: LabelUIComponentParams, stylePack: UIElementComponentStylePack<LabelUIComponentStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<LabelUIComponentStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.label() ?? .default
    }
}
