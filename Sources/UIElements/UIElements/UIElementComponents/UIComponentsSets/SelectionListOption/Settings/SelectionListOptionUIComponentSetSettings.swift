//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct SelectionListOptionUIComponentSetSettings: UIComponentSetSettings {
    
    public var params: SelectionListOptionUIComponentSetParams
    public var stylePack: UIElementComponentStylePack<SelectionListOptionUIComponentSetStyleProperties>
    
    public init(params: SelectionListOptionUIComponentSetParams) {
        self.init(params: params, stylePack: Self.stylePackFactory?.selectionListOption() ?? .default)
    }
    
    public init(params: SelectionListOptionUIComponentSetParams, styleType: UIStyleType) {
        self.init(params: params, stylePack: Self.stylePack(for: styleType))
    }
    
    public init(params: SelectionListOptionUIComponentSetParams, stylePack: UIElementComponentStylePack<SelectionListOptionUIComponentSetStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    public static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<SelectionListOptionUIComponentSetStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.selectionListOption() ?? .default
    }
}
