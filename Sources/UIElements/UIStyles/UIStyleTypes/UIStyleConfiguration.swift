//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIStyleConfigurationInterface {
    
    static var current: UIStyleType { get }
}

public final class UIStyleConfiguration: UIStyleConfigurationInterface {
    
    public static var current: UIStyleType = .os
}
