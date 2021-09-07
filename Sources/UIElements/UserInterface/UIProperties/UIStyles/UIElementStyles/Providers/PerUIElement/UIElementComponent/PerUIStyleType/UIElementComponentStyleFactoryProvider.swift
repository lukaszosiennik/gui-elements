//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class UIElementComponentStyleFactoryProvider:
    UIElementComponentStyleFactoryProviderInterface {
    
    private let styleFactory: [UIStyleType: UIElementComponentStyleFactoryInterface]
    
    static private let shared: UIElementComponentStyleFactoryProvider = .init()
    
    private init() {
        let appCompanySpecificStyleFactory: AppCompanySpecificUIElementComponentStyleFactory = .init()
        let devSoftwareEngineerStyleFactory: DevSoftwareEngineerUIElementComponentStyleFactory = .init()
        let devBootstrapStyleFactory: DevBootstrapUIElementComponentStyleFactory = .init()
        
        self.styleFactory = [
            appCompanySpecificStyleFactory.styleType: appCompanySpecificStyleFactory,
            devSoftwareEngineerStyleFactory.styleType: devSoftwareEngineerStyleFactory,
            devBootstrapStyleFactory.styleType: devBootstrapStyleFactory,
        ]
    }
    
    public static var currentFactory: UIElementComponentStyleFactoryInterface? {
        return factory(
            for: UIStyleConfiguration.current
        )
    }
    
    public static func factory(
        for styleType: UIStyleType
    ) -> UIElementComponentStyleFactoryInterface? {
        return shared.styleFactory[styleType]
    }
}
