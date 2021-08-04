//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct ButtonUIComponentSettings: UIComponentSettings {
    
    var params: ButtonUIComponentParams
    var stylePack: UIElementComponentStylePack<ButtonUIComponentStyleProperties>
    
    init(params: ButtonUIComponentParams) {
        self.init(params: params, stylePack: Self.stylePackFactory?.button() ?? .default)
    }
    
    init(params: ButtonUIComponentParams, styleType: UIStyleType) {
        self.init(params: params, stylePack: Self.stylePack(for: styleType))
    }
    
    init(params: ButtonUIComponentParams, stylePack: UIElementComponentStylePack<ButtonUIComponentStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<ButtonUIComponentStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.button() ?? .default
    }
}
