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
    private let optionViewHeightConstraintID = "optionViewHeight"
    
    public let initialization = UIElementComponentInitialization()
    
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
    
    public func setupNestedSettings() {
        titleLabelUI.settings = .init(
            params: .init(
                text: settings.params.title
            ),
            styleType: settings.styleType,
            overwrittenBy: .init(
                lookParams: .init(
                    linesNumber: settings.styleProperties?.lookParams?.titleLinesNumber
                )
            )
        )
    }
    
    public func setupParams(_ params: NavigationMenuUIComponentGroupParams<OptionKey>) {
        stackView.arrangedSubviews.forEach {
            stackView.removeArrangedSubview($0)
        }
        
        params.options.forEach { option in
            let optionView = NavigationMenuUIOptionComponentSet(
                settings: .init(
                    params: .init(
                        title: option.value,
                        action: {
                            params.actions?(option.key)
                        }),
                    styleType: settings.styleType
                )
            )
            
            stackView.addArrangedSubview(optionView)
        }
    }
}

extension NavigationMenuUIComponentGroup {
    
    public func setupStyleLookOS() {
        let tempView = UIView()
        backgroundColor = tempView.backgroundColor
    }
    
    public func setupStyleLookSystem(_ look: NavigationMenuUIComponentGroupStylePropertiesLook) {
        backgroundColor = look.backgroundColor
    }
}

extension NavigationMenuUIComponentGroup {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(_ lookParams: NavigationMenuUIComponentGroupStylePropertiesLookParams) {}
}

extension NavigationMenuUIComponentGroup {
    
    public func setupStyleLayoutInitialization() {
        titleLabelUI.textAlignment = .center
        stackView.axis = .vertical
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.fill
        
        uie.addSubview(titleLabelUI)
        uie.addSubview(stackViewBackground)
        uie.addSubview(stackView)
        
        let titleTopSpaceConstraint = titleLabelUI.topAnchor.constraint(equalTo: topAnchor)
        titleTopSpaceConstraint.identifier = titleTopSpaceConstraintID
        let titleBottomSpaceConstraint = titleLabelUI.bottomAnchor.constraint(equalTo: stackView.topAnchor)
        titleBottomSpaceConstraint.identifier = titleBottomSpaceConstraintID
        
        NSLayoutConstraint.activate([
            titleLabelUI.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor),
            titleLabelUI.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            titleLabelUI.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleTopSpaceConstraint,
            titleBottomSpaceConstraint,
        ])
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            stackViewBackground.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            stackViewBackground.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            stackViewBackground.topAnchor.constraint(equalTo: stackView.topAnchor),
            stackViewBackground.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
        ])
    }
    
    public func setupStyleLayoutOS() {
        let tempStackView = UIStackView()
        stackView.spacing = tempStackView.spacing
        
        uie.constraint(with: titleTopSpaceConstraintID)?.constant = 0
        uie.constraint(with: titleBottomSpaceConstraintID)?.constant = 0
        stackView.arrangedSubviews.forEach { optionView in
            optionView.uie.removeConstraintIfExists(with: optionViewHeightConstraintID)
        }
    }
    
    public func setupStyleLayoutSystem(_ layoutParams: NavigationMenuUIComponentGroupStylePropertiesLayoutParams) {
        stackView.spacing = layoutParams.optionsSpace
        
        uie.constraint(with: titleTopSpaceConstraintID)?.constant = layoutParams.titleTopMargin
        uie.constraint(with: titleBottomSpaceConstraintID)?.constant = -layoutParams.titleBottomMargin
        if let optionHeight = layoutParams.optionHeight {
            stackView.arrangedSubviews.forEach { optionView in
                if let constraint = optionView.uie.constraint(with: optionViewHeightConstraintID) {
                    constraint.constant = optionHeight
                } else {
                    NSLayoutConstraint.activate([
                        optionView.heightAnchor.constraint(equalToConstant: optionHeight),
                    ])
                }
            }
        }
    }
}
