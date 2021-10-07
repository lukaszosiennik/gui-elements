//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIPresenterInterface {
    
    associatedtype InputParams:
        GUIPresenterInputParamsInterface
    
    associatedtype OutputParams:
        GUIPresenterOutputParamsInterface
    
    init(
        inputParams: InputParams
    )
    
    var outputParams: OutputParams {
        get
    }
}
