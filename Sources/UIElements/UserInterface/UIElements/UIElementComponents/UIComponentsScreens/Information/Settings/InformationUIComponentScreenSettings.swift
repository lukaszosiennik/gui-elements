//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct InformationUIComponentScreenSettings: UIComponentScreenSettings {
    
    public let params: InformationUIComponentScreenParams
    public var style: UIElementComponentStyle<InformationUIComponentScreenStyleProperties>
    
    public init(params: InformationUIComponentScreenParams, style: UIElementComponentStyle<InformationUIComponentScreenStyleProperties>) {
        self.params = params
        self.style = style
    }
    
    public static var style: UIElementComponentStyle<InformationUIComponentScreenStyleProperties>? {
        return Self.styleFactory?.information()
    }
    
    public static func style(for styleType: UIStyleType) -> UIElementComponentStyle<InformationUIComponentScreenStyleProperties>? {
        return Self.styleFactory(for: styleType)?.information()
    }
}
