//
//  Created by Łukasz Osiennik on 15/09/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

open class NavigationMenuGUIElementComponentParamsExtendedBasis<
    Option:
        NavigationMenuGUIElementComponentParamsOptionInterface,

    AdditionalParams:
        GUIPropertyDefaultValueInterface
>:
    NavigationMenuGUIElementComponentParamsInterface,
    GUIElementComponentParams {
    
    public typealias Option =
        Option
    
    public typealias AdditionalParams =
        AdditionalParams
    
    public let strings: LocalizationStrings
    
    public let options: Options
    
    public let additional: AdditionalParams
    
    public static var `default`: Self {
        return .init(
            strings: .init(
                title: structName(
                    dot: "title"
                )
            ),
            options: [],
            additional: .default
        )
    }
    
    public required init(
        strings: LocalizationStrings,
        options: Options,
        additional: AdditionalParams
    ) {
        self.strings = strings
        self.options = options
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
