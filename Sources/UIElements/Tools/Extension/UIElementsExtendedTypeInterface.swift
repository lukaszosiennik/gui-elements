//
//  Created by Łukasz Osiennik on 19/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementsExtendedTypeInterface {
    
    associatedtype ExtendedType

    static var uie: UIElementsExtension<ExtendedType>.Type { get set }
    var uie: UIElementsExtension<ExtendedType> { get set }
}

extension UIElementsExtendedTypeInterface {
    
    public static var uie: UIElementsExtension<Self>.Type {
        get {
            return UIElementsExtension<Self>.self
        }
        set {}
    }

    public var uie: UIElementsExtension<Self> {
        get {
            return UIElementsExtension(self)
        }
        set {}
    }
}
