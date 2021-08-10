//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct InformationUIComponentScreenSettings: UIComponentScreenSettings {
    
    public var params: InformationUIComponentScreenParams
    public var stylePack: UIElementComponentStylePack<InformationUIComponentScreenStyleProperties>
    
    public init(params: InformationUIComponentScreenParams) {
        self.init(
            params: params,
            stylePack: Self.stylePackFactory?.information() ?? .default
        )
    }
    
    public init(params: InformationUIComponentScreenParams, styleType: UIStyleType) {
        self.init(
            params: params,
            stylePack: Self.stylePack(for: styleType)
        )
    }
    
    public init(params: InformationUIComponentScreenParams, stylePack: UIElementComponentStylePack<InformationUIComponentScreenStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<InformationUIComponentScreenStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.information() ?? .default
    }
}
