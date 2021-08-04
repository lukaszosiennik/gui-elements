//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct CommonUIComponentScreenSettings: UIComponentScreenSettings {
    
    var params: CommonUIComponentScreenParams
    var stylePack: UIElementComponentStylePack<CommonUIComponentScreenStyleProperties>
    
    init(params: CommonUIComponentScreenParams) {
        self.init(params: params, stylePack: Self.stylePackFactory?.common() ?? .default)
    }
    
    init(params: CommonUIComponentScreenParams, styleType: UIStyleType) {
        self.init(params: params, stylePack: Self.stylePack(for: styleType))
    }
    
    init(params: CommonUIComponentScreenParams, stylePack: UIElementComponentStylePack<CommonUIComponentScreenStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<CommonUIComponentScreenStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.common() ?? .default
    }
}
