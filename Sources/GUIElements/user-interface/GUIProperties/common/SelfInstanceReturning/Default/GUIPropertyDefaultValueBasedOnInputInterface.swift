//
//  Created by Łukasz Osiennik on 03/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIPropertyDefaultValueBasedOnInputInterface {
    
    static func `default`(
        styleType: GUIStyleType
    ) -> Self
}
