//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class UIElementComponentStyleFactoryProvider: UIElementComponentStyleFactoryProviderInterface {
    
    private let styleFactory: [UIStyleType: UIElementComponentStyleFactoryInterface]
    
    static private let shared = UIElementComponentStyleFactoryProvider()
    
    private init() {
        let appStyleFactory: AppUIElementComponentStyleFactory = .init(
            styleType: .system(.app)
        )
        let devStyleFactory: DevUIElementComponentStyleFactory = .init(
            styleType: .system(.dev)
        )
        
        self.styleFactory = [
            appStyleFactory.styleType: appStyleFactory,
            devStyleFactory.styleType: devStyleFactory,
        ]
    }
    
    public static var currentFactory: UIElementComponentStyleFactoryInterface? {
        return factory(for: UIStyleConfiguration.current)
    }
    
    public static func factory(for styleType: UIStyleType) -> UIElementComponentStyleFactoryInterface? {
        return shared.styleFactory[styleType]
    }
}
