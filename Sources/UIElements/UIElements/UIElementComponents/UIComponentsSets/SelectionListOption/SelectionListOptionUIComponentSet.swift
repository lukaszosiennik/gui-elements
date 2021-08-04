//
//  Created by Łukasz Osiennik on 22/05/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

final class SelectionListOptionUIComponentSet: UIView, UIComponentSet {
    
    private let button = OSButtonUIComponent()
    
    var action: OSButtonUIComponent.Action?
    
    var settings: SelectionListOptionUIComponentSetSettings {
        didSet {
            setupSettings()
        }
    }
    
    init(settings: SelectionListOptionUIComponentSetSettings = .default) {
        self.settings = settings
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupSettings()
        
        setupActions()
    }
    
    func setupParams() {
        button.settings.params = .init(title: settings.params.title)
    }
    
    func setupNestedStyle() {
        button.settings.styleType = settings.stylePack.style.type
    }
    
    func setupStyleLook() {
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        backgroundColor = styleProperties.look.backgroundColor
        layer.borderWidth = styleProperties.look.borderWidth
        layer.borderColor = styleProperties.look.borderColor.cgColor
    }
    
    func setupStyleLayout() {
        addSubview(button)
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor),
            button.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
            button.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
        
        guard let styleLayoutParams = settings.stylePack.style.properties?.layoutParams else {
            return
        }
    }
    
    private func setupActions() {
        button.action = { [weak self] in
            guard let self = self else { return }
            
            print("SelectionListOptionUIComponentSet \"\(self.settings.params.title)\" button action")
            
            self.action?()
        }
    }
}
