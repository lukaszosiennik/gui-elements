//
//  Created by Łukasz Osiennik on 01/11/2023.
//  Copyright © 2023 Łukasz Osiennik. All rights reserved.
//

public protocol EmptyInitDataInterface:
    InitDataInterface {
    
    associatedtype DataType
    
    static var initAsEmpty: DataType {
        get
    }
}
