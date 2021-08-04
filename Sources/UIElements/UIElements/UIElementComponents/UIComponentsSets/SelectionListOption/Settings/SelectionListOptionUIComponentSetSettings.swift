//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

struct SelectionListOptionUIComponentSetSettings: UIComponentSetSettings {
    
    var params: SelectionListOptionUIComponentSetParams
    var stylePack: UIElementComponentStylePack<SelectionListOptionUIComponentSetStyleProperties>
    
    init(params: SelectionListOptionUIComponentSetParams) {
        self.init(params: params, stylePack: Self.stylePackFactory?.selectionListOption() ?? .default)
    }
    
    init(params: SelectionListOptionUIComponentSetParams, styleType: UIStyleType) {
        self.init(params: params, stylePack: Self.stylePack(for: styleType))
    }
    
    init(params: SelectionListOptionUIComponentSetParams, stylePack: UIElementComponentStylePack<SelectionListOptionUIComponentSetStyleProperties>) {
        self.params = params
        self.stylePack = stylePack
    }
    
    static func stylePack(for styleType: UIStyleType) -> UIElementComponentStylePack<SelectionListOptionUIComponentSetStyleProperties> {
        return Self.stylePackFactory(for: styleType)?.selectionListOption() ?? .default
    }
}
