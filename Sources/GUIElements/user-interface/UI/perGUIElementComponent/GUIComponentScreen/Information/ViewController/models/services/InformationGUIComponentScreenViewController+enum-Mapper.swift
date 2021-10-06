//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension InformationGUIComponentScreenViewController {
    
    public enum Mapper:
        ViewControllerParamsMapperInterface {
        
        public typealias ViewController =
            InformationGUIComponentScreenViewController
        
        public typealias ViewModel =
            InformationGUIComponentScreenViewModel
        
        public static func map(
            params: Params
        ) -> View.Settings? {
            return .init(
                params: params.viewParams,
                styleType: params.styleType
            )
        }
        
        public static func map(
            params: Params
        ) -> ViewModel.InputParams? {
            return nil
        }
        
        public static func map(
            output: ViewModel.OutputParams
        ) -> View.Params? {
            return nil
        }
    }
}

extension InformationGUIComponentScreenViewController.Mapper {
    
    public static func map(
        params: ViewController.Params
    ) -> ViewController.View.Settings {
        return map(
            params: params
        )!
    }
}
