//
//  Created by Łukasz Osiennik on 28/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class InformationGUIComponentScreenGUIViewController:
    UIViewController,
    GUIViewControllerInterface {
    
    public typealias View =
        InformationGUIComponentScreen
    
    public typealias Presenter =
        EmptyGUIPresenter
    
    private let params: Params
    
    private let presenter: Presenter
    
    public init(
        params: Params
    ) {
        self.params = params
        self.presenter = .init()
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
            settings: Mapper.map(
                params: params
            )
        )
    }
}
