//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class CardUIComponentGroup<BodyContainerContent: UIView>: UIView, UIComponentGroup {

    private let titleContainer = UIView()
    private let titleLabelUI = LabelUIComponent()
    
    private let bodyContainer = UIView()
    private let bodyContainerContent: BodyContainerContent?
    
    public var initialization: Bool = false
    
    public var settings: CardUIComponentGroupSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(bodyContainerContent: BodyContainerContent?, settings: CardUIComponentGroupSettings = .default) {
        self.bodyContainerContent = bodyContainerContent
        self.settings = settings
        super.init(frame: .zero)

        setup()
    }
    
    public convenience init(settings: CardUIComponentGroupSettings = .default) {
        self.init(bodyContainerContent: nil, settings: settings)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        guard let look = settings.styleProperties?.look else {
            return
        }
    }
    
    public func setupStyleLookParams() {
        guard let lookParams = settings.styleProperties?.lookParams else {
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
            if let bodyContainerContent = bodyContainerContent {
                bodyContainer.addSubview(bodyContainerContent)
            }
            
            titleContainer.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                titleContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
                titleContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
                titleContainer.topAnchor.constraint(equalTo: topAnchor),
                titleContainer.bottomAnchor.constraint(equalTo: bodyContainer.topAnchor),
            ])
            
            NSLayoutConstraint.activate([
                titleLabelUI.leadingAnchor.constraint(greaterThanOrEqualTo: titleContainer.leadingAnchor),
                titleLabelUI.trailingAnchor.constraint(lessThanOrEqualTo: titleContainer.trailingAnchor),
                titleLabelUI.centerXAnchor.constraint(equalTo: titleContainer.centerXAnchor),
                titleLabelUI.topAnchor.constraint(greaterThanOrEqualTo: titleContainer.topAnchor),
                titleLabelUI.bottomAnchor.constraint(lessThanOrEqualTo: titleContainer.bottomAnchor),
                titleLabelUI.centerYAnchor.constraint(equalTo: titleContainer.centerYAnchor),
            ])
            
            bodyContainer.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                bodyContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
                bodyContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
                bodyContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            ])
            
            if let bodyContainerContent = bodyContainerContent {
                bodyContainerContent.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    bodyContainerContent.leadingAnchor.constraint(equalTo: bodyContainer.leadingAnchor),
                    bodyContainerContent.trailingAnchor.constraint(equalTo: bodyContainer.trailingAnchor),
                    bodyContainerContent.topAnchor.constraint(equalTo: bodyContainer.topAnchor),
                    bodyContainerContent.bottomAnchor.constraint(equalTo: bodyContainer.bottomAnchor),
                ])
            }
        }
        
        guard let layoutParams = settings.styleProperties?.layoutParams else {
            return
        }
    }
}
