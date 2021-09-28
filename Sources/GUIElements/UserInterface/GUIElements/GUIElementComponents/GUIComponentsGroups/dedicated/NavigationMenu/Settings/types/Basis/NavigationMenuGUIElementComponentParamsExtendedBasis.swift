//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

open class NavigationMenuGUIElementComponentParamsExtendedBasis<
    OptionsKeyValue:
        NavigationMenuGUIElementComponentParamsOptionsKeyValueInterface,
    ActionsFunction,

    AdditionalParams:
        GUIPropertyDefaultValueInterface
>:
    NavigationMenuGUIElementComponentParamsInterface,
    GUIElementComponentParams {
    
    public typealias OptionsKeyValue =
        OptionsKeyValue
    
    public typealias AdditionalParams =
        AdditionalParams
    
    public let strings: LocalizationStrings
    
    public let options: Options
    public let actions: ActionsFunction?
    
    public let additional: AdditionalParams
    
    public static var `default`: Self {
        return .init(
            strings: .init(
                title: structName(
                    dot: "title"
                )
            ),
            options: [:],
            actions: nil,
            additional: .default
        )
    }
    
    public required init(
        strings: LocalizationStrings,
        options: Options,
        actions: ActionsFunction?,
        additional: AdditionalParams
    ) {
        self.strings = strings
        self.options = options
        self.actions = actions
        self.additional = additional
    }
}

extension NavigationMenuGUIElementComponentParamsExtendedBasis {
    
    public struct LocalizationStrings:
        NavigationMenuGUIElementComponentParamsLocalizationStringsInterface {
        
        public let title: String
        
        public init(
            title: String
        ) {
            self.title = title
        }
    }
}
