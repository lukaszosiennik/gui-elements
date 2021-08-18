//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuUIComponentScreen<OptionKey: InputUIElementComponentActionsKeyInterface>: UIView, UIComponentScreen {
    
    private let navigationMenuUI = NavigationMenuUIComponentGroup<OptionKey>()
    
    private let container = UIView()
    
    private let leadingSpaceConstraintID = "leadingSpace"
    private let trailingSpaceConstraintID = "trailingSpace"
    
    public var initialization: Bool = false
    
    public var settings: NavigationMenuUIComponentScreenSettings<OptionKey> {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: NavigationMenuUIComponentScreenSettings<OptionKey> = .default) {
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
    
    public func setupStyleLookOS() {
        if settings.styleType == .os(true) {
            backgroundColor = .white
        } else {
            let tempView = UIView()
            backgroundColor = tempView.backgroundColor
        }
    }
    
    public func setupStyleLookSystem(_ look: NavigationMenuUIComponentScreenStylePropertiesLook) {
        backgroundColor = look.backgroundColor
    }
}

extension NavigationMenuUIComponentScreen {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentScreenStylePropertiesLookParams) {}
}

extension NavigationMenuUIComponentScreen {
    
    public func setupStyleLayoutInitialization() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(container)
        container.addSubview(navigationMenuUI)
        
        let leadingSpaceConstraint = container.leadingAnchor.constraint(equalTo: leadingAnchor)
        leadingSpaceConstraint.identifier = leadingSpaceConstraintID
        let trailingSpaceConstraint = container.trailingAnchor.constraint(equalTo: trailingAnchor)
        trailingSpaceConstraint.identifier = trailingSpaceConstraintID
        
        container.translatesAutoresizingMaskIntoConstraints = false
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
        constraint(with: leadingSpaceConstraintID)?.constant = 0
        constraint(with: trailingSpaceConstraintID)?.constant = 0
    }
    
    public func setupStyleLayoutSystem(_ layoutParams: NavigationMenuUIComponentScreenStylePropertiesLayoutParams) {
        constraint(with: leadingSpaceConstraintID)?.constant = layoutParams.leftMargin
        constraint(with: trailingSpaceConstraintID)?.constant = -layoutParams.rightMargin
    }
}
