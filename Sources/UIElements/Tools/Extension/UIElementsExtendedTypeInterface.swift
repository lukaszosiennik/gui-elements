//
//  Created by Łukasz Osiennik on 19/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementsExtendedTypeInterface {
    
    associatedtype ExtendedType

    static var uie: UIElementsExtension<ExtendedType>.Type { get }
    var uie: UIElementsExtension<ExtendedType> { get }
}

extension UIElementsExtendedTypeInterface {
    
    public static var uie: UIElementsExtension<Self>.Type {
        return UIElementsExtension<Self>.self
    }

    public var uie: UIElementsExtension<Self> {
        return UIElementsExtension(self)
    }
}
