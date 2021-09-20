//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct CardGUIComponentGroupStylePropertiesLayoutParams:
    GUIComponentGroupStylePropertiesLayoutParams {
    
    public let title: Title?
    public let body: Body?
    
    public static var preferred: Self? {
        return nil
    }
    
    public init(
        title: Title?,
        body: Body?
    ) {
        self.title = title
        self.body = body
    }
}

extension CardGUIComponentGroupStylePropertiesLayoutParams {
    
    public struct Title {
        
        public let leftMargin: CGFloat
        public let rightMargin: CGFloat
        public let topMargin: CGFloat
        public let bottomMargin: CGFloat
        
        public init(
            leftMargin: CGFloat,
            rightMargin: CGFloat,
            topMargin: CGFloat,
            bottomMargin: CGFloat
        ) {
            self.leftMargin = leftMargin
            self.rightMargin = rightMargin
            self.topMargin = topMargin
            self.bottomMargin = bottomMargin
        }
    }
    
    public struct Body {
        
        public let leftMargin: CGFloat
        public let rightMargin: CGFloat
        public let topMargin: CGFloat
        public let bottomMargin: CGFloat
        
        public init(
            leftMargin: CGFloat,
            rightMargin: CGFloat,
            topMargin: CGFloat,
            bottomMargin: CGFloat
        ) {
            self.leftMargin = leftMargin
            self.rightMargin = rightMargin
            self.topMargin = topMargin
            self.bottomMargin = bottomMargin
        }
    }
}
