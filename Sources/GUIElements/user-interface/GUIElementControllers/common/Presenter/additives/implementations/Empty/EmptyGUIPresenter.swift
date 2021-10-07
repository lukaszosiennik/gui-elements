//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class EmptyGUIPresenter:
    GUIPresenterInterface {
    
    private let inputParams: InputParams
    
    public init(
        inputParams: InputParams
    ) {
        self.inputParams = inputParams
    }
    
    public var outputParams: OutputParams {
        return .init()
    }
}
