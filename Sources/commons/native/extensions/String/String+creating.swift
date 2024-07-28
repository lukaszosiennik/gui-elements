//
//  Created by Łukasz Osiennik on 31/08/2021.
//  Copyright © 2021 Łukasz Osiennik. All rights reserved.
//

extension String:
    CommonsExtendedTypeInterface {}

extension CommonsExtension
//  BasicGroupedInitDataInterface // [*] conflicting conformance for different conditional bounds
where
    ExtendedType
        == String {
    
    public static var initAsEmpty: ExtendedType {
        return ""
    }
    
    public static var initAsFatalError: ExtendedType {
        return "FATAL_ERROR"
    }
            
    public static var initAsMock: ExtendedType {
        return "MOCK"
    }
}

extension CommonsExtension
where
    ExtendedType
        == String {
    
    public static var createAsNewLine: ExtendedType {
        return "\n"
    }
}
