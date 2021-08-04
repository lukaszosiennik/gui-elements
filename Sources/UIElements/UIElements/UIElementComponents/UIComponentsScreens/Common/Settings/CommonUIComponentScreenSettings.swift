//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct CommonUIComponentScreenSettings: UIComponentScreenSettings {
    
    public var params: CommonUIComponentScreenParams
    public var stylePack: UIElementComponentStylePack<CommonUIComponentScreenStyleProperties>
    
    public init(params: CommonUIComponentScreenParams) {
        self.init(params: params, stylePack: Self.stylePackFactory?.common() ?? .default)
    }
    
    public init(params: CommonUIComponentScreenParams, styleType: UIStyleType) {
        self.init(params: params, stylePack: Self.stylePack(for: styleType))
    }
    
    public init(params: CommonUIComponentScreenParams, stylePack: UIElementComponentStylePack<CommonUIComponentScreenStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<CommonUIComponentScreenStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.common() ?? .default
    }
}
