//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public final class GUIElementComponentStyleFactoryProvider:
    GUIElementComponentStyleFactoryProviderInterface {
    
    private let styleFactory: [GUIStyleType: GUIElementComponentStyleFactoryInterface]
    
    static private let shared: GUIElementComponentStyleFactoryProvider = .init()
    
    private init() {
        let appCompanySpecificStyleFactory: AppCompanySpecificGUIElementComponentStyleFactory = .init()
        let devSoftwareEngineerStyleFactory: DevSoftwareEngineerGUIElementComponentStyleFactory = .init()
        let devBootstrapStyleFactory: DevBootstrapGUIElementComponentStyleFactory = .init()
        
        self.styleFactory = [
            appCompanySpecificStyleFactory.styleType: appCompanySpecificStyleFactory,
            devSoftwareEngineerStyleFactory.styleType: devSoftwareEngineerStyleFactory,
            devBootstrapStyleFactory.styleType: devBootstrapStyleFactory,
        ]
    }
    
    public static var currentFactory: GUIElementComponentStyleFactoryInterface? {
        return factory(
            for: GUIStyleConfiguration.current
        )
    }
    
    public static func factory(
        for styleType: GUIStyleType
    ) -> GUIElementComponentStyleFactoryInterface? {
        return shared.styleFactory[styleType]
    }
}
