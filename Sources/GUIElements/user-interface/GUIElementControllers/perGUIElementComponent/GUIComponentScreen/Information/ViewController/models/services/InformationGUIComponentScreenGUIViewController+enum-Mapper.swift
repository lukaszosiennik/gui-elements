//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

extension InformationGUIComponentScreenGUIViewController {
    
    public enum Mapper:
        GUIViewControllerParamsMapperInterface {
        
        public typealias ViewController =
            InformationGUIComponentScreenGUIViewController
        
        public typealias Presenter =
            ViewController.Presenter
        
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
        ) -> Presenter.InputParams? {
            return nil
        }
        
        public static func map(
            output: Presenter.OutputParams
        ) -> View.Params? {
            return nil
        }
    }
}

extension InformationGUIComponentScreenGUIViewController.Mapper {
    
    public static func map(
        params: ViewController.Params
    ) -> ViewController.View.Settings {
        return map(
            params: params
        )!
    }
}
