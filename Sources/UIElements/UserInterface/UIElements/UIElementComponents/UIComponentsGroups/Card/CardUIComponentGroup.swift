//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class CardUIComponentGroup<BodyContainerContent: UIView>: UIView, UIComponentGroup {

    private let titleContainer = UIView()
    private let titleLabelUI = LabelUIComponent()
    
    private let bodyContainer = UIView()
    private let bodyContainerContent = BodyContainerContent()
    
    public let initialization = UIElementComponentInitialization()
    
    public var settings: CardUIComponentGroupSettings {
        didSet {
            setupSettings()
        }
    }
    
    public convenience init() {
        self.init(settings: .default)
    }
    
    public init(settings: CardUIComponentGroupSettings = .default) {
        self.settings = settings
        super.init(frame: .zero)

        setup()
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
    
    public func setupParams(_ params: CardUIComponentGroupParams) {}
}

extension CardUIComponentGroup {
    
    public func setupStyleLookOS(_ look: OSUIElementComponentStylePropertiesLook) {}
    
    public func setupStyleLookSystem(_ look: CardUIComponentGroupStylePropertiesLook) {}
}

extension CardUIComponentGroup {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentGroupStylePropertiesLookParams) {}
}

extension CardUIComponentGroup {
    
    public func setupStyleLayoutInitialization() {
        titleLabelUI.textAlignment = .center
        
        uie.addSubview(titleContainer)
        titleContainer.uie.addSubview(titleLabelUI)
        uie.addSubview(bodyContainer)
        bodyContainer.uie.addSubview(bodyContainerContent)
        
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
        
        NSLayoutConstraint.activate([
            bodyContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            bodyContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            bodyContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            bodyContainerContent.leadingAnchor.constraint(equalTo: bodyContainer.leadingAnchor),
            bodyContainerContent.trailingAnchor.constraint(equalTo: bodyContainer.trailingAnchor),
            bodyContainerContent.topAnchor.constraint(equalTo: bodyContainer.topAnchor),
            bodyContainerContent.bottomAnchor.constraint(equalTo: bodyContainer.bottomAnchor),
        ])
    }
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(_ layoutParams: CardUIComponentGroupStylePropertiesLayoutParams) {}
}