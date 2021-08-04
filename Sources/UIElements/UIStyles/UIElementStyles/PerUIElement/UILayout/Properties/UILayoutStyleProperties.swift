//
//  Created by Łukasz Osiennik on 31/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UILayoutStyleProperties: UIElementStyleProperties {
    
    associatedtype UILayoutStylePropertiesParamsType: UILayoutStylePropertiesParams
    
    var params: UILayoutStylePropertiesParamsType { get set }
    
    init?(styleType: UIStyleType?, params: UILayoutStylePropertiesParamsType)
}
