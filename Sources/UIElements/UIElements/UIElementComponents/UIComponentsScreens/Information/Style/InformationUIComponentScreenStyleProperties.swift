//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct InformationUIComponentScreenStyleProperties: UIComponentScreenStyleProperties {
    
    public let look: InformationUIComponentScreenStylePropertiesLook?
    public let lookParams: EmptyUIElementComponentStylePropertiesLookParams?
    public let layoutParams: InformationUIComponentScreenStylePropertiesLayoutParams?
    
    public init(look: InformationUIComponentScreenStylePropertiesLook?, lookParams: EmptyUIElementComponentStylePropertiesLookParams?, layoutParams: InformationUIComponentScreenStylePropertiesLayoutParams?) {
        self.look = look
        self.lookParams = lookParams
        self.layoutParams = layoutParams
    }
}
