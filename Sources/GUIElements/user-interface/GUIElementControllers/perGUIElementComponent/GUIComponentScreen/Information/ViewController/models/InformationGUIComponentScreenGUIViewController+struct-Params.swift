//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension InformationGUIComponentScreenGUIViewController {
    
    public struct Params:
        GUIViewControllerParamsInterface {
        
        let viewParams: View.Params
        let styleType: GUIStyleType
        
        public init(
            viewParams: View.Params,
            styleType: GUIStyleType
        ) {
            self.viewParams = viewParams
            self.styleType = styleType
        }
    }
}
