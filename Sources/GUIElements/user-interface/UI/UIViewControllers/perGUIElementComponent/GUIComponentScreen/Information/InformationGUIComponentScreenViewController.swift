//
//  Created by Łukasz Osiennik on 28/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class InformationGUIComponentScreenViewController:
    UIViewController {
    
    public typealias View =
        InformationGUIComponentScreen
    
    var customView: View? {
        return view as? View
    }
    
    private let params: Params
    
    public init(
        params: Params
    ) {
        self.params = params
        super.init(
            nibName: nil,
            bundle: nil
        )
    }
    
    required init?(
        coder: NSCoder
    ) {
        fatalError(
            "init(coder:) has not been implemented"
        )
    }
    
    public override func loadView() {
        view = View(
            settings: .init(
                params: .init(
                    strings: params.strings
                ),
                styleType: params.styleType
            )
        )
    }
}

extension InformationGUIComponentScreenViewController {
    
    public struct Params {
        
        public let strings: View.Params.LocalizationStrings
        public let styleType: GUIStyleType
    }
}
