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
    
    private let strings: View.Params.LocalizationStrings
    
    private let styleType: GUIStyleType
    
    public init(
        strings: View.Params.LocalizationStrings,
        styleType: GUIStyleType
    ) {
        self.strings = strings
        self.styleType = styleType
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
                    strings: strings
                ),
                styleType: styleType
            )
        )
    }
}
