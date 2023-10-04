//
//  Created by Łukasz Osiennik on 11/06/2020.
//  Copyright © 2020 openplainness (https://www.openplainness.com). All rights reserved.
//

public enum GUISystemStyleType:
    Hashable {
    
    case app(GUIAppStyleType)
    case dev(GUIDevStyleType)
}

extension GUISystemStyleType {
    
    public static var app: Self {
        return .app(.companySpecific)
    }
    
    public static var dev: Self {
        return .dev(.softwareEngineer)
    }
}
