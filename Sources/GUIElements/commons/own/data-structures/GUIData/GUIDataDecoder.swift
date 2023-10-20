//
//  Created by Łukasz Osiennik on 07/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIDataDecoder {
    
    associatedtype DecodedGUIData:
        GUIData
    
    func decode() throws -> DecodedGUIData
}
