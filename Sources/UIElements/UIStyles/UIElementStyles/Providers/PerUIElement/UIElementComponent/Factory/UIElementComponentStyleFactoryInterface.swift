//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIElementComponentStyleFactoryInterface: UIElementStyleFactoryInterface {
    
    var uiComponent: UIComponentStyleFactoryInterface? { get }
    var uiComponentSet: UIComponentSetStyleFactoryInterface? { get }
    var uiComponentGroup: UIComponentGroupStyleFactoryInterface? { get }
    var uiComponentScreen: UIComponentScreenStyleFactoryInterface? { get }
}
