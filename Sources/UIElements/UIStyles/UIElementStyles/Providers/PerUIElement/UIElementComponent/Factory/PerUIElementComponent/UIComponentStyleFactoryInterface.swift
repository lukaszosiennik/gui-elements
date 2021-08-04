//
//  Created by Łukasz Osiennik on 30/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIComponentStyleFactoryInterface: UIElementComponentTypeStyleFactoryInterface {
    
    func label() -> UIElementComponentStylePack<LabelUIComponentStyleProperties>
    func button() -> UIElementComponentStylePack<ButtonUIComponentStyleProperties>
}
