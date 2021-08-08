//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuUIComponentScreen<OptionKey: NavigationMenuOptionKeyInterface>: UIView, UIComponentScreen {
    
    private let selectionList = NavigationMenuUIComponentGroup<OptionKey>()
    
    private let viewContainer = UIView()
    
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
        setupSettings()
    }
    
    public func setupNestedSettings() {
        selectionList.settings = .init(
            params: .init(
                title: settings.params.title,
                options: settings.params.options,
                optionsAction: settings.params.optionsAction
            ),
            styleType: settings.styleType
        )
    }
    
    public func setupParams() {}
    
    public func setupStyleLook() {
        backgroundColor = .white
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
    }
    
    public func setupStyleLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(viewContainer)
        viewContainer.addSubview(selectionList)
        
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            viewContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            viewContainer.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            viewContainer.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        ])
        
        selectionList.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            selectionList.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor),
            selectionList.trailingAnchor.constraint(equalTo: viewContainer.trailingAnchor),
            selectionList.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor),
        ])
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
    }
}
