//
//  Created by Łukasz Osiennik on 05/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

import Foundation

public final class NavigationMenuGUIDataDecoder {
    
    public typealias Menu =
        NavigationMenuGUIData.Menu
    
    public enum ParserError:
        Error {
        
        case fileNotFound
        
        case nestedError(_ error: Error)
    }
    
    private static let fileExtension: String = "json"
    
    private let fileName: String
    
    public init(
        fileName: String
    ) {
        self.fileName = fileName
    }

    public func decode() throws -> Menu {
        do {
            guard let fileURL = Bundle.main.url(
                forResource: fileName,
                withExtension: Self.fileExtension
            ) else {
                throw ParserError.fileNotFound
            }
            
            return try JSONDecoder().decode(
                Menu.self,
                from: try Data(
                    contentsOf: fileURL
                )
            )
        } catch {
            throw ParserError.nestedError(
                error
            )
        }
    }
}
