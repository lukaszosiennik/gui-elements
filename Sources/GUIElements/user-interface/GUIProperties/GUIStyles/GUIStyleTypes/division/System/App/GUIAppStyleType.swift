//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public enum GUIAppStyleType:
    Hashable {
 
    case wireframe
    case companySpecific
    case appSpecific(GUIAppSpecificStyleType)
}
