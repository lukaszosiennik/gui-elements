//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

final class UIElementComponentStyleFactoryProvider: UIElementComponentStyleFactoryProviderInterface {
    
    private let styleFactory: [UIStyleType: UIElementComponentStyleFactoryInterface]
    
    static private let shared = UIElementComponentStyleFactoryProvider()
    
    private init() {
        let appStyleFactory = AppUIElementComponentStyleFactory(styleType: .system(.app))
        let devStyleFactory = DevUIElementComponentStyleFactory(styleType: .system(.dev))
        
        self.styleFactory = [
            appStyleFactory.styleType: appStyleFactory,
            devStyleFactory.styleType: devStyleFactory,
        ]
    }
    
    static var currentFactory: UIElementComponentStyleFactoryInterface? {
        return factory(for: UIStyleConfiguration.current)
    }
    
    static func factory(for styleType: UIStyleType) -> UIElementComponentStyleFactoryInterface? {
        return shared.styleFactory[styleType]
    }
}
