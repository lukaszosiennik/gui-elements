//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

protocol UIElementComponentStyleFactoryProviderInterface {
    
    static var currentFactory: UIElementComponentStyleFactoryInterface? { get }
    
    static func factory(for styleType: UIStyleType) -> UIElementComponentStyleFactoryInterface?
}
