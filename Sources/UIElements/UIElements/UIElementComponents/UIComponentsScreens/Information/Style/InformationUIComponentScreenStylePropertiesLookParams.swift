//
//  Created by Łukasz Osiennik on 16/08/2021.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public struct InformationUIComponentScreenStylePropertiesLookParams: UIComponentScreenStylePropertiesLookParams {
    
    public let titleLinesNumber: Int
    
    init(titleLinesNumber: Int) {
        self.titleLinesNumber = titleLinesNumber
    }
}
