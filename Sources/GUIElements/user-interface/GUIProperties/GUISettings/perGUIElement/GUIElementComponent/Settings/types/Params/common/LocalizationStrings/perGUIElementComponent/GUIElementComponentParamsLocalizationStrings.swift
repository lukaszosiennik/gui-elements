//
//  Created by Łukasz Osiennik on 26/09/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

public protocol GUIElementComponentParamsLocalizationStrings {
    
    associatedtype LocalizationStrings:
        LocalizationStringsInterface
    
    var strings: LocalizationStrings {
        get
    }
}
