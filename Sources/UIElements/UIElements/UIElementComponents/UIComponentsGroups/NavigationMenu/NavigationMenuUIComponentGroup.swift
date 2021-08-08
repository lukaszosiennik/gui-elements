//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuUIComponentGroup<OptionKey: NavigationMenuOptionKeyInterface>: UIView, UIComponentGroup {
    
    private let titleLabel = LabelUIComponent()
    
    private let stackViewBackground = UIView()
    private let stackView = UIStackView()
    
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
        setupSettings()
    }
    
    public func setupNestedSettings() {
        titleLabel.settings = .init(
            params: .init(text: settings.params.title),
            styleType: settings.styleType
        )
    }
    
    public func setupParams() {
        stackView.arrangedSubviews.forEach {
            stackView.removeArrangedSubview($0)
        }
        
        settings.params.options.forEach { option in
            let optionView = NavigationMenuUIOptionComponentSet(
                settings: .init(
                    params: .init(title: option.value),
                    styleType: settings.styleType
                )
            )
            
            optionView.action = { [weak self] in
                self?.settings.params.optionsAction?(option.key)
            }
            
            stackView.addArrangedSubview(optionView)
        }
    }
    
    public func setupStyleLook() {
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
    }
    
    public func setupStyleLayout() {
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        stackView.axis = .vertical
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.fill
        
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        addSubview(stackViewBackground)
        addSubview(stackView)
        
        let titleTopSpaceConstraintID = "titleTopSpace"
        let titleBottomSpaceConstraintID = "titleBottomSpace"
        if constraint(with: titleTopSpaceConstraintID, from: self) == nil {
            let titleTopSpaceConstraint = titleLabel.topAnchor.constraint(equalTo: topAnchor)
            titleTopSpaceConstraint.identifier = titleTopSpaceConstraintID
            let titleBottomSpaceConstraint = titleLabel.bottomAnchor.constraint(equalTo: stackView.topAnchor)
            titleBottomSpaceConstraint.identifier = titleBottomSpaceConstraintID
            
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                titleTopSpaceConstraint,
                titleBottomSpaceConstraint,
                titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            ])
        }
        
        constraint(with: titleTopSpaceConstraintID, from: self)?.constant = 0
        constraint(with: titleBottomSpaceConstraintID, from: self)?.constant = 0
        
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
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        stackView.spacing = styleProperties.layoutParams.optionsSpace
        
        constraint(with: titleTopSpaceConstraintID, from: self)?.constant = styleProperties.layoutParams.titleTopSpace
        constraint(with: titleBottomSpaceConstraintID, from: self)?.constant = -styleProperties.layoutParams.titleBottomSpace
        
        stackView.arrangedSubviews.forEach { optionView in
            NSLayoutConstraint.activate([
                optionView.heightAnchor.constraint(equalToConstant: styleProperties.layoutParams.optionHeight),
            ])
        }
    }
}

extension NavigationMenuUIComponentGroup {
    
    private func constraint(with identifier: String, from view: UIView) -> NSLayoutConstraint? {
        return view.constraints.first { $0.identifier == identifier }
    }
}
