//
//  Created by Łukasz Osiennik on 07/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class NavigationMenuGUIComponentGroup<
    OptionValue:
        NavigationMenuGUIElementComponentParamsOptionValueInterface
>:
    UIView,
    GUIComponentGroup {
    
    private let titleLabelGUI: LabelGUIComponent = .init()
    
    private let stackViewBackground: UIView = .init()
    private let stackView: UIStackView = .init()
    
    private let titleTopSpaceConstraintID: String = "titleTopSpace"
    private let titleBottomSpaceConstraintID: String = "titleBottomSpace"
    private let optionViewHeightConstraintID: String = "optionViewHeight"
    
    public let initialization: GUIElementComponentInitialization = .init()
    
    public var settings: NavigationMenuGUIComponentGroupSettings<
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
        settings: NavigationMenuGUIComponentGroupSettings<
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
        titleLabelGUI.settings = .init(
            params: .init(
                strings: .init(
                    text: settings.params.strings.title
                )
            ),
            styleType: settings.styleType,
            overwrittenBy: .init(
                lookParams: .init(
                    linesNumber: settings.styleProperties.lookParams?.titleLinesNumber
                )
            )
        )
    }
    
    public func setupParams(
        _ params: NavigationMenuGUIComponentGroupParams<
            OptionValue
        >
    ) {
        stackView.arrangedSubviews.forEach {
            stackView.removeArrangedSubview(
                $0
            )
        }
        
        params.options.forEach { option in
            let optionView: NavigationMenuGUIOptionComponentSet = .init(
                settings: .init(
                    params: .init(
                        strings: .init(
                            title: option.strings.title
                        ),
                        action: {
                            option.action?()
                        }
                    ),
                    styleType: settings.styleType
                )
            )
            
            stackView.addArrangedSubview(
                optionView
            )
        }
    }
}

extension NavigationMenuGUIComponentGroup {
    
    public func setupStyleLookOSConfiguration(
        _ lookConfiguration: GUIElementComponentLookOSConfiguration
    ) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookOS(
        _ look: EmptyGUIComponentGroupStylePropertiesOSLook
    ) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookSystem(
        _ look: NavigationMenuGUIComponentGroupStylePropertiesSystemLook
    ) {
        backgroundColor = look.backgroundColor
    }
    
    private func setupStyleLookOS() {
        let tempView: UIView = .init()
        backgroundColor = tempView.backgroundColor
    }
}

extension NavigationMenuGUIComponentGroup {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(
        _ lookParams: NavigationMenuGUIComponentGroupStylePropertiesLookParams
    ) {}
}

extension NavigationMenuGUIComponentGroup {
    
    public func setupStyleLayoutInitialization() {
        titleLabelGUI.textAlignment = .center
        stackView.axis = .vertical
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.fill
        
        uie.addSubview(
            titleLabelGUI
        )
        uie.addSubview(
            stackViewBackground
        )
        uie.addSubview(
            stackView
        )
        
        let titleTopSpaceConstraint = titleLabelGUI.topAnchor.constraint(
            equalTo: topAnchor
        )
        titleTopSpaceConstraint.identifier = titleTopSpaceConstraintID
        let titleBottomSpaceConstraint = titleLabelGUI.bottomAnchor.constraint(
            equalTo: stackView.topAnchor
        )
        titleBottomSpaceConstraint.identifier = titleBottomSpaceConstraintID
        
        NSLayoutConstraint.activate([
            titleLabelGUI.leadingAnchor.constraint(
                greaterThanOrEqualTo: leadingAnchor
            ),
            titleLabelGUI.trailingAnchor.constraint(
                lessThanOrEqualTo: trailingAnchor
            ),
            titleLabelGUI.centerXAnchor.constraint(
                equalTo: centerXAnchor
            ),
            titleTopSpaceConstraint,
            titleBottomSpaceConstraint,
        ])
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(
                equalTo: leadingAnchor
            ),
            stackView.trailingAnchor.constraint(
                equalTo: trailingAnchor
            ),
            stackView.bottomAnchor.constraint(
                equalTo: bottomAnchor
            ),
        ])
        
        NSLayoutConstraint.activate([
            stackViewBackground.leadingAnchor.constraint(
                equalTo: stackView.leadingAnchor
            ),
            stackViewBackground.trailingAnchor.constraint(
                equalTo: stackView.trailingAnchor
            ),
            stackViewBackground.topAnchor.constraint(
                equalTo: stackView.topAnchor
            ),
            stackViewBackground.bottomAnchor.constraint(
                equalTo: stackView.bottomAnchor
            ),
        ])
    }
    
    public func setupStyleLayoutOS() {
        let tempStackView: UIStackView = .init()
        stackView.spacing = tempStackView.spacing
        
        uie.constraint(
            with: titleTopSpaceConstraintID
        )?.constant = 0
        uie.constraint(
            with: titleBottomSpaceConstraintID
        )?.constant = 0
        stackView.arrangedSubviews.forEach { optionView in
            optionView.uie.removeConstraintIfExists(
                with: optionViewHeightConstraintID
            )
        }
    }
    
    public func setupStyleLayoutSystem(
        _ layoutParams: NavigationMenuGUIComponentGroupStylePropertiesLayoutParams
    ) {
        stackView.spacing = layoutParams.optionsSpace
        
        uie.constraint(
            with: titleTopSpaceConstraintID
        )?.constant = layoutParams.titleTopMargin
        uie.constraint(
            with: titleBottomSpaceConstraintID
        )?.constant = -layoutParams.titleBottomMargin
        if let optionHeight = layoutParams.optionHeight {
            stackView.arrangedSubviews.forEach { optionView in
                if let constraint = optionView.uie.constraint(
                    with: optionViewHeightConstraintID
                ) {
                    constraint.constant = optionHeight
                } else {
                    NSLayoutConstraint.activate([
                        optionView.heightAnchor.constraint(
                            equalToConstant: optionHeight
                        ),
                    ])
                }
            }
        }
    }
}
