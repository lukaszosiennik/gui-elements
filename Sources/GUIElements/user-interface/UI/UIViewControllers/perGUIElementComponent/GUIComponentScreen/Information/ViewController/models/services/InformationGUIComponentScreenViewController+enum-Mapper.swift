//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension InformationGUIComponentScreenViewController {
    
    enum Mapper {
        
        static func map(
            params: Params
        ) -> View.Settings {
            return .init(
                params: params.viewParams,
                styleType: params.styleType
            )
        }
        
        static func map(
            params: Params
        ) -> ViewModel.Input {
            return .init()
        }
        
        static func map(
            output: ViewModel.Output
        ) -> View.Params? {
            return nil
        }
    }
}
