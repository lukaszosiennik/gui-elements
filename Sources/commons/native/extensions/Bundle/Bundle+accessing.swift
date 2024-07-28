//
//  Created by Łukasz Osiennik on 08/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

import Foundation

extension Bundle {
    
    public enum BundleAccessingError:
        Error {
        
        case bundleNotFound
    }
    
    public static func package(
        name: String
    ) throws -> Bundle {
        guard let url = Bundle.main.url(
            forResource: name,
            withExtension: "bundle"
        ), let bundle = Bundle(
            url: url
        ) else {
            throw BundleAccessingError.bundleNotFound
        }
        
        return bundle
    }
}
