//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuUIComponentScreen<
    OptionKey: InputUIElementComponentActionsKeyInterface
>:
    UIView,
    UIComponentScreen {
    
    private let navigationMenuUI: NavigationMenuUIComponentGroup<OptionKey> = .init()
    
    private let container: UIView = .init()
    
    private let leadingSpaceConstraintID = "leadingSpace"
    private let trailingSpaceConstraintID = "trailingSpace"
    
    public let initialization: UIElementComponentInitialization = .init()
    
    public var settings: NavigationMenuUIComponentScreenSettings<OptionKey> {
        didSet {
            setupSettings()
        }
    }
    
    public convenience init() {
        self.init(settings: .default)
    }
    
    public init(settings: NavigationMenuUIComponentScreenSettings<OptionKey>) {
        self.settings = settings
        super.init(frame: .zero)

        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupNestedSettings() {
        navigationMenuUI.settings = .init(
            params: .init(
                title: settings.params.title,
                options: settings.params.options,
                actions: settings.params.actions
            ),
            styleType: settings.styleType
        )
    }
    
    public func setupParams(_ params: NavigationMenuUIComponentScreenParams<OptionKey>) {}
}

extension NavigationMenuUIComponentScreen {
    
    public func setupScreenStyleLookOS() {}
    
    public func setupStyleLookOS(_ look: EmptyUIComponentScreenStylePropertiesOSLook) {}
    
    public func setupStyleLookSystem(_ look: NavigationMenuUIComponentScreenStylePropertiesSystemLook) {
        backgroundColor = look.backgroundColor
    }
}

extension NavigationMenuUIComponentScreen {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentScreenStylePropertiesLookParams) {}
}

extension NavigationMenuUIComponentScreen {
    
    public func setupStyleLayoutInitialization() {
        uie.addSubview(container)
        container.uie.addSubview(navigationMenuUI)
        
        let leadingSpaceConstraint = container.leadingAnchor.constraint(equalTo: leadingAnchor)
        leadingSpaceConstraint.identifier = leadingSpaceConstraintID
        let trailingSpaceConstraint = container.trailingAnchor.constraint(equalTo: trailingAnchor)
        trailingSpaceConstraint.identifier = trailingSpaceConstraintID
        
        NSLayoutConstraint.activate([
            leadingSpaceConstraint,
            trailingSpaceConstraint,
            container.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            container.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            navigationMenuUI.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            navigationMenuUI.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            navigationMenuUI.centerYAnchor.constraint(equalTo: container.centerYAnchor),
        ])
    }
    
    public func setupStyleLayoutOS() {
        uie.constraint(with: leadingSpaceConstraintID)?.constant = 0
        uie.constraint(with: trailingSpaceConstraintID)?.constant = 0
    }
    
    public func setupStyleLayoutSystem(_ layoutParams: NavigationMenuUIComponentScreenStylePropertiesLayoutParams) {
        uie.constraint(with: leadingSpaceConstraintID)?.constant = layoutParams.leftMargin
        uie.constraint(with: trailingSpaceConstraintID)?.constant = -layoutParams.rightMargin
    }
}
