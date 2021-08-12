//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuUIComponentGroup<OptionKey: InputUIElementComponentActionsKeyInterface>: UIView, UIComponentGroup {
    
    private let titleLabelUI = LabelUIComponent()
    
    private let stackViewBackground = UIView()
    private let stackView = UIStackView()
    
    private let titleTopSpaceConstraintID = "titleTopSpace"
    private let titleBottomSpaceConstraintID = "titleBottomSpace"
    
    private var initialization: Bool = false
    
    public var settings: NavigationMenuUIComponentGroupSettings<OptionKey> {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: NavigationMenuUIComponentGroupSettings<OptionKey> = .default) {
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
            stylePack: .init(
                factory: UIElementComponentStyleFactoryProvider.factory(for: settings.styleType),
                style: .init(
                    type: settings.styleType,
                    properties: .init(
                        look: .init(),
                        layoutParams: .init(linesNumber: 0)
                    )
                )
            )
        )
    }
    
    public func setupParams() {
        stackView.arrangedSubviews.forEach {
            stackView.removeArrangedSubview($0)
        }
        
        settings.params.options.forEach { option in
            let optionView = NavigationMenuUIOptionComponentSet(
                settings: .init(
                    params: .init(
                        title: option.value,
                        action: { [weak self] in
                            self?.settings.params.actions?(option.key)
                        }),
                    styleType: settings.styleType
                )
            )
            
            stackView.addArrangedSubview(optionView)
        }
    }
    
    public func setupStyleLook() {
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        backgroundColor = styleProperties.look.backgroundColor
    }
    
    public func setupStyleLayout() {
        if initialization {
            titleLabelUI.textAlignment = .center
            stackView.axis = .vertical
            stackView.distribution = UIStackView.Distribution.equalSpacing
            stackView.alignment = UIStackView.Alignment.fill
            
            translatesAutoresizingMaskIntoConstraints = false
            
            addSubview(titleLabelUI)
            addSubview(stackViewBackground)
            addSubview(stackView)
            
            let titleTopSpaceConstraint = titleLabelUI.topAnchor.constraint(equalTo: topAnchor)
            titleTopSpaceConstraint.identifier = titleTopSpaceConstraintID
            let titleBottomSpaceConstraint = titleLabelUI.bottomAnchor.constraint(equalTo: stackView.topAnchor)
            titleBottomSpaceConstraint.identifier = titleBottomSpaceConstraintID
            
            NSLayoutConstraint.activate([
                titleTopSpaceConstraint,
                titleBottomSpaceConstraint,
                titleLabelUI.centerXAnchor.constraint(equalTo: centerXAnchor),
            ])
            
            stackView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            ])
            
            stackViewBackground.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                stackViewBackground.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
                stackViewBackground.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
                stackViewBackground.topAnchor.constraint(equalTo: stackView.topAnchor),
                stackViewBackground.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
            ])
        } else {
            constraint(with: titleTopSpaceConstraintID)?.constant = 0
            constraint(with: titleBottomSpaceConstraintID)?.constant = 0
        }
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        stackView.spacing = styleProperties.layoutParams.optionsSpace
        
        constraint(with: titleTopSpaceConstraintID)?.constant = styleProperties.layoutParams.titleTopSpace
        constraint(with: titleBottomSpaceConstraintID)?.constant = -styleProperties.layoutParams.titleBottomSpace
        
        if let optionHeight = styleProperties.layoutParams.optionHeight {
            stackView.arrangedSubviews.forEach { optionView in
                NSLayoutConstraint.activate([
                    optionView.heightAnchor.constraint(equalToConstant: optionHeight),
                ])
            }
        }
    }
}
