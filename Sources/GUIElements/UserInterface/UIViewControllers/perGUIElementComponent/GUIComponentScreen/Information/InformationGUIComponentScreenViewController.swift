//
//  Created by Łukasz Osiennik on 28/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

final public class InformationGUIComponentScreenViewController:
    UIViewController {
    
    typealias View =
        InformationGUIComponentScreen
    
    var customView: View? {
        return view as? View
    }
    
    private let note: String
    
    private let styleType: GUIStyleType
    
    public init(
        note: String,
        styleType: GUIStyleType
    ) {
        self.note = note
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
    
    override public func loadView() {
        view = View(
            settings: .init(
                params: .init(
                    strings: .init(
                        title: note
                    )
                ),
                styleType: styleType
            )
        )
    }
}
