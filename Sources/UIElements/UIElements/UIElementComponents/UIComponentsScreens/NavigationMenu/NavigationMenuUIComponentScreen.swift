//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuUIComponentScreen<OptionKey: InputUIElementComponentActionsKeyInterface>: UIView, UIComponentScreen {
    
    private let navigationMenuUI = NavigationMenuUIComponentGroup<OptionKey>()
    
    private let viewContainer = UIView()
    
    private let leadingSpaceConstraintID = "leadingSpace"
    private let trailingSpaceConstraintID = "trailingSpace"
    
    private var initialization: Bool = false
    
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
    
    private func setup() {
        initialization = true
        setupSettings()
        initialization = false
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
    
    public func setupParams() {}
    
    public func setupStyleLook() {
        if settings.styleType == .os(true) {
            backgroundColor = .white
        }
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        backgroundColor = styleProperties.look.backgroundColor
    }
    
    public func setupStyleLayout() {
        if initialization {
            translatesAutoresizingMaskIntoConstraints = false
            
            addSubview(viewContainer)
            viewContainer.addSubview(navigationMenuUI)
            
            let leadingSpaceConstraint = viewContainer.leadingAnchor.constraint(equalTo: leadingAnchor)
            leadingSpaceConstraint.identifier = leadingSpaceConstraintID
            let trailingSpaceConstraint = viewContainer.trailingAnchor.constraint(equalTo: trailingAnchor)
            trailingSpaceConstraint.identifier = trailingSpaceConstraintID
            
            viewContainer.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                leadingSpaceConstraint,
                trailingSpaceConstraint,
                viewContainer.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                viewContainer.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            ])
            
            NSLayoutConstraint.activate([
                navigationMenuUI.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor),
                navigationMenuUI.trailingAnchor.constraint(equalTo: viewContainer.trailingAnchor),
                navigationMenuUI.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor),
            ])
        } else {
            constraint(with: leadingSpaceConstraintID, from: self)?.constant = 0
            constraint(with: trailingSpaceConstraintID, from: self)?.constant = 0
        }
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        constraint(with: leadingSpaceConstraintID, from: self)?.constant = styleProperties.layoutParams.leadingSpace
        constraint(with: trailingSpaceConstraintID, from: self)?.constant = -styleProperties.layoutParams.trailingSpace
    }
}

extension NavigationMenuUIComponentScreen {
    
    private func constraint(with identifier: String, from view: UIView) -> NSLayoutConstraint? {
        return view.constraints.first { $0.identifier == identifier }
    }
}
