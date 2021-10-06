//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol ViewControllerParamsMapperInterface {
    
    associatedtype ViewController:
        ViewControllerInterface
    
    associatedtype ViewModel:
        ViewModelInterface
    
    static func map(
        params: ViewController.Params
    ) -> ViewController.View.Settings?
    
    static func map(
        params: ViewController.Params
    ) -> ViewModel.InputParams?
    
    static func map(
        output: ViewModel.OutputParams
    ) -> ViewController.View.Settings.Params?
}
