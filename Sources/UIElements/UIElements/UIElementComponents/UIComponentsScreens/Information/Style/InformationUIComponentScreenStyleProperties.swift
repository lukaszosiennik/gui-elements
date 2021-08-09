//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct InformationUIComponentScreenStyleProperties: UIComponentScreenStyleProperties {
    
    public var look: InformationUIComponentScreenStylePropertiesLook
    public var layoutParams: InformationUIComponentScreenStylePropertiesLayoutParams
    
    public init(look: InformationUIComponentScreenStylePropertiesLook, layoutParams: InformationUIComponentScreenStylePropertiesLayoutParams) {
        self.look = look
        self.layoutParams = layoutParams
    }
}
