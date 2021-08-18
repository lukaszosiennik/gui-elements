//
//  Created by Łukasz Osiennik on 12/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct InformationUIComponentScreenSettings: UIComponentScreenSettings {
    
    public typealias UIElementComponentStylePropertiesOverwrittenType = EmptyUIComponentScreenStylePropertiesOverwritten
    
    public let params: InformationUIComponentScreenParams
    public var stylePack: UIElementComponentStylePack<InformationUIComponentScreenStyleProperties>
    
    public init(params: InformationUIComponentScreenParams, stylePack: UIElementComponentStylePack<InformationUIComponentScreenStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static var stylePack: UIElementComponentStylePack<InformationUIComponentScreenStyleProperties>? {
        return Self.stylePackFactory?.information()
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<InformationUIComponentScreenStyleProperties>? {
        return Self.stylePackFactory(for: styleType)?.information()
    }
}
