//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuGUIComponentScreen<
    OptionKey:
        InputGUIElementComponentActionKeyInterface
>:
    UIView,
    GUIComponentScreen {
    
    public typealias OptionValue =
        NavigationMenuGUIElementComponentParamsOptionValueObject
    
    private let navigationMenuGUI: NavigationMenuGUIComponentGroup<
        OptionKey,
        OptionValue
    > = .init()
    
    private let container: UIView = .init()
    
    private let leadingSpaceConstraintID: String = "leadingSpace"
    private let trailingSpaceConstraintID: String = "trailingSpace"
    
    public let initialization: GUIElementComponentInitialization = .init()
    
    public var settings: NavigationMenuGUIComponentScreenSettings<
        OptionKey,
        OptionValue
    > {
        didSet {
            setupSettings()
        }
    }
    
    public convenience init() {
        self.init(
            settings: .default
        )
    }
    
    public init(
        settings: NavigationMenuGUIComponentScreenSettings<
            OptionKey,
            OptionValue
        >
    ) {
        self.settings = settings
        super.init(
            frame: .zero
        )

        setup()
    }
    
    required init?(
        coder: NSCoder
    ) {
        fatalError(
            "init(coder:) has not been implemented"
        )
    }
    
    public func setupNestedSettings() {
        navigationMenuGUI.settings = .init(
            params: .init(
                title: settings.params.title,
                options: settings.params.options,
                actions: settings.params.actions
            ),
            styleType: settings.styleType
        )
    }
    
    public func setupParams(
        _ params: NavigationMenuGUIComponentScreenParams<
            OptionKey,
            OptionValue
        >
    ) {}
}

extension NavigationMenuGUIComponentScreen {
    
    public func setupScreenStyleLookOS() {
        setupStyleLookOS()
    }
    
    public func setupStyleLookOS(
        _ look: EmptyGUIComponentScreenStylePropertiesOSLook
    ) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookSystem(
        _ look: NavigationMenuGUIComponentScreenStylePropertiesSystemLook
    ) {
        backgroundColor = look.backgroundColor
    }
    
    private func setupStyleLookOS() {
        let tempView: UIView = .init()
        tempView.backgroundColor = tempView.backgroundColor
    }
}

extension NavigationMenuGUIComponentScreen {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(
        _ lookParams: EmptyGUIComponentScreenStylePropertiesLookParams
    ) {}
}

extension NavigationMenuGUIComponentScreen {
    
    public func setupStyleLayoutInitialization() {
        uie.addSubview(
            container
        )
        container.uie.addSubview(
            navigationMenuGUI
        )
        
        let leadingSpaceConstraint = container.leadingAnchor.constraint(
            equalTo: leadingAnchor
        )
        leadingSpaceConstraint.identifier = leadingSpaceConstraintID
        let trailingSpaceConstraint = container.trailingAnchor.constraint(
            equalTo: trailingAnchor
        )
        trailingSpaceConstraint.identifier = trailingSpaceConstraintID
        
        NSLayoutConstraint.activate([
            leadingSpaceConstraint,
            trailingSpaceConstraint,
            container.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor
            ),
            container.bottomAnchor.constraint(
                equalTo: safeAreaLayoutGuide.bottomAnchor
            ),
        ])
        
        NSLayoutConstraint.activate([
            navigationMenuGUI.leadingAnchor.constraint(
                equalTo: container.leadingAnchor
            ),
            navigationMenuGUI.trailingAnchor.constraint(
                equalTo: container.trailingAnchor
            ),
            navigationMenuGUI.centerYAnchor.constraint(
                equalTo: container.centerYAnchor
            ),
        ])
    }
    
    public func setupStyleLayoutOS() {
        uie.constraint(
            with: leadingSpaceConstraintID
        )?.constant = 0
        uie.constraint(
            with: trailingSpaceConstraintID
        )?.constant = 0
    }
    
    public func setupStyleLayoutSystem(
        _ layoutParams: NavigationMenuGUIComponentScreenStylePropertiesLayoutParams
    ) {
        uie.constraint(
            with: leadingSpaceConstraintID
        )?.constant = layoutParams.leftMargin
        uie.constraint(
            with: trailingSpaceConstraintID
        )?.constant = -layoutParams.rightMargin
    }
}
