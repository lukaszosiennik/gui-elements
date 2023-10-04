//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 openplainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public struct CardGUIComponentGroupStylePropertiesSystemLook:
    GUIComponentGroupStylePropertiesSystemLook {
    
    public let whole: Whole?
    public let title: Title?
    public let body: Body?
    
    public init(
        whole: Whole?,
        title: Title?,
        body: Body?
    ) {
        self.whole = whole
        self.title = title
        self.body = body
    }
}

extension CardGUIComponentGroupStylePropertiesSystemLook {
    
    public struct Whole {
        
        public let border: Border?
        public let separator: Separator?
        
        public init(
            border: Border?,
            separator: Separator?
        ) {
            self.border = border
            self.separator = separator
        }
    }
    
    public struct Title {
        
        public let backgroundColor: UIColor
        public let textColor: UIColor?
        
        public init(
            backgroundColor: UIColor,
            textColor: UIColor?
        ) {
            self.backgroundColor = backgroundColor
            self.textColor = textColor
        }
    }
    
    public struct Body {
        
        public let backgroundColor: UIColor
        
        public init(
            backgroundColor: UIColor
        ) {
            self.backgroundColor = backgroundColor
        }
    }
}

extension CardGUIComponentGroupStylePropertiesSystemLook.Whole {
    
    public struct Border {
        
        public let corners: CornerType
        public let width: CGFloat // 1, 2
        public let color: UIColor
        
        public init(
            corners: CornerType,
            width: CGFloat,
            color: UIColor
        ) {
            self.corners = corners
            self.width = width
            self.color = color
        }
    }
    
    public struct Separator {
        
        public let width: CGFloat // 1, 2
        public let color: UIColor
        
        public init(
            width: CGFloat,
            color: UIColor
        ) {
            self.width = width
            self.color = color
        }
    }
}

extension CardGUIComponentGroupStylePropertiesSystemLook.Whole {
    
    public enum CornerType {
        
        case square
        case rounded
    }
}
