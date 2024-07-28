//
//  Created by Łukasz Osiennik on 01/11/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol FatalErrorInitDataInterface:
    InitDataInterface {
    
    associatedtype DataType
    
    static var initAsFatalError: DataType {
        get
    }
}
