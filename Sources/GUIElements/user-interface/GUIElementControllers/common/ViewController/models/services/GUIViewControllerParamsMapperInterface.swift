//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol GUIViewControllerParamsMapperInterface {
    
    associatedtype ViewController:
        GUIViewControllerInterface
    
    associatedtype Presenter:
        GUIPresenterInterface
    
    static func map(
        params: ViewController.Params
    ) -> ViewController.View.Settings?
    
    static func map(
        params: ViewController.Params
    ) -> Presenter.InputParams?
    
    static func map(
        output: Presenter.OutputParams
    ) -> ViewController.View.Settings.Params?
}
