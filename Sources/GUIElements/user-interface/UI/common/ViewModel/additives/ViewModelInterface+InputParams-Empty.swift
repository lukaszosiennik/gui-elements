//
//  Created by Łukasz Osiennik on 06/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension ViewModelInterface
where
    InputParams
        == EmptyViewModelInputParams {
    
    init() {
        self = .init(
            inputParams: .init()
        )
    }
}
