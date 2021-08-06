//
//  Created by Łukasz Osiennik on 22/05/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class SelectionListOptionUIComponentSet: SelectionListOptionOSButtonUIComponent, UIComponentSet {
    
    public var settings: SelectionListOptionUIComponentSetSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: SelectionListOptionUIComponentSetSettings = .default) {
        self.settings = settings
        super.init(button: OSButtonUIComponent())
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupSettings()
    }
    
    public func setupParams() {
        button.settings.params = .init(title: settings.params.title)
    }
    
    public func setupNestedStyle() {
        button.settings.styleType = settings.stylePack.style.type
    }
    
    public func setupStyleLook() {
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        backgroundColor = styleProperties.look.backgroundColor
        layer.borderWidth = styleProperties.look.borderWidth
        layer.borderColor = styleProperties.look.borderColor.cgColor
    }
    
    public func setupStyleLayout() {
        guard let styleLayoutParams = settings.stylePack.style.properties?.layoutParams else {
            return
        }
    }
}

public class SelectionListOptionOSButtonUIComponent: SelectionListOptionComponentSet<OSButtonUIComponent> {
    
    override func setupActions() {
        super.setupActions()
        
        button.action = { [weak self] in
            self?.action?()
        }
    }
}
