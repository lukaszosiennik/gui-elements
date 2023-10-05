//
//  Created by Łukasz Osiennik on 05/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

public enum NavigationMenuGUIData {
        
    public struct Menu:
        Decodable {
        
        public let title: String
        public let options: [Option]
        
        public struct Option:
            Decodable {
            
            public let name: String
            public let type: `Type`
            
            public enum `Type`:
                Decodable {
                
                case submenu(Menu)
                case option(ActionId)
                
                public enum ActionId:
                    Decodable {
                    
                    case defined(_ actionId: String)
                    case undefined
                }
            }
        }
    }
}

extension NavigationMenuGUIData.Menu.Option {
    
    private enum CodingKeys: 
        String,
        CodingKey {
        
        case name
        case actionId
        case submenu
    }
    
    public init(
        from decoder: Decoder
    ) throws {
        let values = try decoder.container(
            keyedBy: CodingKeys.self
        )
        
        self.name = try values.decode(
            String.self,
            forKey: .name
        )
        if let actionId = try values.decodeIfPresent(
            String.self,
            forKey: .actionId
        ) {
            self.type = .option(.defined(actionId))
        } else if let menu = try values.decodeIfPresent(
            NavigationMenuGUIData.Menu.self,
            forKey: .submenu
        ) {
            self.type = .submenu(menu)
        } else {
            self.type = .option(.undefined)
        }
    }
}

extension NavigationMenuGUIData.Menu.Option.`Type`.ActionId:
    CustomStringConvertible {
    
    public var description: String {
        switch self {
        case .defined(let actionId):
            return actionId
        case .undefined:
            return "UndefinedActionId"
        }
    }
}
