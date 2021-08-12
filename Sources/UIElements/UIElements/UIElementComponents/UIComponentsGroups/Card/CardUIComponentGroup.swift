//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class CardUIComponentGroup: UIView, UIComponentGroup {
    
    private let titleContainer = UIView()
    private let titleLabelUI = LabelUIComponent()
    
    private let bodyContainer = UIView()
    
    private var initialization: Bool = false
    
    public var settings: CardUIComponentGroupSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: CardUIComponentGroupSettings = .default) {
        self.settings = settings
        super.init(frame: .zero)

        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        initialization = true
        setupSettings()
        initialization = false
    }
    
    public func setupNestedSettings() {
        titleLabelUI.settings = .init(
            params: .init(
                text: settings.params.title
            ),
            styleType: settings.styleType
        )
    }
    
    public func setupParams() {}
    
    public func setupStyleLook() {
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
    }
    
    public func setupStyleLayout() {
        if initialization {
            titleLabelUI.textAlignment = .center
            
            translatesAutoresizingMaskIntoConstraints = false
            
            addSubview(titleContainer)
            titleContainer.addSubview(titleLabelUI)
            addSubview(bodyContainer)
            
            titleContainer.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                titleContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
                titleContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
                titleContainer.topAnchor.constraint(equalTo: topAnchor),
                titleContainer.bottomAnchor.constraint(equalTo: bodyContainer.bottomAnchor),
            ])
            
            NSLayoutConstraint.activate([
                titleLabelUI.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor),
                titleLabelUI.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
                titleLabelUI.centerXAnchor.constraint(equalTo: centerXAnchor),
                titleLabelUI.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
                titleLabelUI.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor),
                titleLabelUI.centerYAnchor.constraint(equalTo: centerYAnchor),
            ])
            
            bodyContainer.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                bodyContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
                bodyContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
                bodyContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            ])
        }
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
    }
}
