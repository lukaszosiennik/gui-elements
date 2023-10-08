//
//  Created by Łukasz Osiennik on 05/10/2023.
//  Copyright © 2023 openplainness (https://www.openplainness.com). All rights reserved.
//

import Foundation

public final class NavigationMenuGUIDataDecoder:
    GUIDataDecoder {
    
    public enum DecoderError:
        Error {
        
        case bundleNotFound
        case jsonFileNotFound
        
        case nestedError(_ error: Error)
    }
    
    private static let fileExtension: String = "json"
    
    private let bundleName: String
    private let fileName: String
    
    public init(
        bundleName: String,
        fileName: String
    ) {
        self.bundleName = bundleName
        self.fileName = fileName
    }

    public func decode() throws -> NavigationMenuGUIData.Menu {
        do {
            guard let fileURL = try bundle(
                with: bundleName
            ).url(
                forResource: fileName,
                withExtension: Self.fileExtension
            ) else {
                throw DecoderError.jsonFileNotFound
            }
            
            return try JSONDecoder().decode(
                NavigationMenuGUIData.Menu.self,
                from: try Data(
                    contentsOf: fileURL
                )
            )
        } catch {
            throw DecoderError.nestedError(
                error
            )
        }
    }
    
    private func bundle(
        with name: String
    ) throws -> Bundle {
        guard let url = Bundle.main.url(
            forResource: name,
            withExtension: "bundle"
        ), let bundle = Bundle(
            url: url
        ) else {
            throw DecoderError.bundleNotFound
        }
        
        return bundle
    }
}
