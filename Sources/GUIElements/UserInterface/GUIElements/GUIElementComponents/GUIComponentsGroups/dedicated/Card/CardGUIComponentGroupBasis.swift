//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public class CardGUIComponentGroupBasis<
    BodyViewType:
        UIView,
    BodyGUIElementComponentSettingsType:
        GUIElementComponentSettings
>:
    UIView,
    GUIComponentGroup {

    private let titleContainer: UIView = .init()
    private let titleLabelGUI: LabelGUIComponent = .init()
    
    private let separatorView: UIView = .init()
    
    private let bodyContainer: UIView = .init()
    let bodyContainerContent: BodyViewType = .init()
    
    private let titleLabelGUILeadingSpaceConstraintID: String = "titleLabelGUILeadingSpace"
    private let titleLabelGUITrailingSpaceConstraintID: String = "titleLabelGUITrailingSpace"
    private let titleLabelGUITopSpaceConstraintID: String = "titleLabelGUITopSpace"
    private let titleLabelGUIBottomSpaceConstraintID: String = "titleLabelGUIBottomSpace"
    
    private let separatorViewHeightConstraintID: String = "separatorViewHeight"
    
    private let bodyContainerContentLeadingSpaceConstraintID: String = "bodyContainerContentLeadingSpace"
    private let bodyContainerContentTrailingSpaceConstraintID: String = "bodyContainerContentTrailingSpace"
    private let bodyContainerContentTopSpaceConstraintID: String = "bodyContainerContentTopSpace"
    private let bodyContainerContentBottomSpaceConstraintID: String = "bodyContainerContentBottomSpace"
    
    public let initialization: GUIElementComponentInitialization = .init()
    
    public var settings: CardGUIComponentGroupSettings<BodyGUIElementComponentSettingsType> {
        didSet {
            setupSettings()
        }
    }
    
    public convenience required init() {
        self.init(
            settings: .default
        )
    }
    
    public required init(
        settings: CardGUIComponentGroupSettings<
            BodyGUIElementComponentSettingsType
        > = .default
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
                look: .init(
                    textColor: {
                        guard case let .system(look) = settings.styleProperties.lookType
                        else {
                            return nil
                        }
                        
                        return look.title?.textColor
                    }()
                )
            )
        )
        
        setupBodyNestedSettings()
    }
    
    func setupBodyNestedSettings() {}
    
    public func setupParams(
        _ params: CardGUIComponentGroupParams
    ) {}
}

extension CardGUIComponentGroupBasis {
    
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
        _ look: CardGUIComponentGroupStylePropertiesSystemLook
    ) {
        if let whole = look.whole {
            if let border = whole.border {
                switch border.corners {
                case .square:
                    layer.cornerRadius = 0
                    clipsToBounds = false
                case .rounded:
                    layer.cornerRadius = 10
                    clipsToBounds = true
                }
                layer.borderWidth = border.width
                layer.borderColor = border.color.cgColor
            }
            if let separator = whole.separator {
                separatorView.isHidden = separator.width <= 0
                separatorView.backgroundColor = separator.color
            }
        }
        if let title = look.title {
            titleContainer.backgroundColor = title.backgroundColor
        }
        if let body = look.body {
            bodyContainer.backgroundColor = body.backgroundColor
        }
    }
    
    private func setupStyleLookOS() {
        let tempView: UIView = .init()
        layer.cornerRadius = tempView.layer.cornerRadius
        clipsToBounds = tempView.clipsToBounds
        layer.borderWidth = tempView.layer.borderWidth
        layer.borderColor = tempView.layer.borderColor
        separatorView.isHidden = true
        separatorView.backgroundColor = tempView.backgroundColor
        titleContainer.backgroundColor = tempView.backgroundColor
        bodyContainer.backgroundColor = tempView.backgroundColor
    }
}

extension CardGUIComponentGroupBasis {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(
        _ lookParams: EmptyGUIComponentGroupStylePropertiesLookParams
    ) {}
}

extension CardGUIComponentGroupBasis {
    
    public func setupStyleLayoutInitialization() {
        titleLabelGUI.textAlignment = .center
        
        uie.addSubview(
            titleContainer
        )
        titleContainer.uie.addSubview(
            titleLabelGUI
        )
        uie.addSubview(
            separatorView
        )
        uie.addSubview(
            bodyContainer
        )
        bodyContainer.uie.addSubview(
            bodyContainerContent
        )
        
        NSLayoutConstraint.activate([
            titleContainer.leadingAnchor.constraint(
                equalTo: leadingAnchor
            ),
            titleContainer.trailingAnchor.constraint(
                equalTo: trailingAnchor
            ),
            titleContainer.topAnchor.constraint(
                equalTo: topAnchor
            ),
            titleContainer.bottomAnchor.constraint(
                equalTo: separatorView.topAnchor
            ),
        ])
        
        let titleLabelGUILeadingSpaceConstraint = titleLabelGUI.leadingAnchor.constraint(
            greaterThanOrEqualTo: titleContainer.leadingAnchor
        )
        titleLabelGUILeadingSpaceConstraint.identifier = titleLabelGUILeadingSpaceConstraintID
        let titleLabelGUITrailingSpaceConstraint = titleLabelGUI.trailingAnchor.constraint(
            lessThanOrEqualTo: titleContainer.trailingAnchor
        )
        titleLabelGUITrailingSpaceConstraint.identifier = titleLabelGUITrailingSpaceConstraintID
        let titleLabelGUITopSpaceConstraint = titleLabelGUI.topAnchor.constraint(
            greaterThanOrEqualTo: titleContainer.topAnchor
        )
        titleLabelGUITopSpaceConstraint.identifier = titleLabelGUITopSpaceConstraintID
        let titleLabelGUIBottomSpaceConstraint = titleLabelGUI.bottomAnchor.constraint(
            lessThanOrEqualTo: titleContainer.bottomAnchor
        )
        titleLabelGUIBottomSpaceConstraint.identifier = titleLabelGUIBottomSpaceConstraintID
        
        NSLayoutConstraint.activate([
            titleLabelGUILeadingSpaceConstraint,
            titleLabelGUITrailingSpaceConstraint,
            titleLabelGUI.centerXAnchor.constraint(
                equalTo: titleContainer.centerXAnchor
            ),
            titleLabelGUITopSpaceConstraint,
            titleLabelGUIBottomSpaceConstraint,
            titleLabelGUI.centerYAnchor.constraint(
                equalTo: titleContainer.centerYAnchor
            ),
        ])
        
        let separatorViewHeightConstraint = separatorView.heightAnchor.constraint(
            equalToConstant: 1
        )
        separatorViewHeightConstraint.identifier = separatorViewHeightConstraintID
        
        NSLayoutConstraint.activate([
            separatorView.leadingAnchor.constraint(
                equalTo: leadingAnchor
            ),
            separatorView.trailingAnchor.constraint(
                equalTo: trailingAnchor
            ),
            separatorViewHeightConstraint
        ])
        
        NSLayoutConstraint.activate([
            bodyContainer.leadingAnchor.constraint(
                equalTo: leadingAnchor
            ),
            bodyContainer.trailingAnchor.constraint(
                equalTo: trailingAnchor
            ),
            bodyContainer.topAnchor.constraint(
                equalTo: separatorView.bottomAnchor
            ),
            bodyContainer.bottomAnchor.constraint(
                equalTo: bottomAnchor
            ),
        ])
        
        let bodyContainerContentLeadingSpaceConstraint = bodyContainerContent.leadingAnchor.constraint(
            equalTo: bodyContainer.leadingAnchor
        )
        bodyContainerContentLeadingSpaceConstraint.identifier = bodyContainerContentLeadingSpaceConstraintID
        let bodyContainerContentTrailingSpaceConstraint = bodyContainerContent.trailingAnchor.constraint(
            equalTo: bodyContainer.trailingAnchor
        )
        bodyContainerContentTrailingSpaceConstraint.identifier = bodyContainerContentTrailingSpaceConstraintID
        let bodyContainerContentTopSpaceConstraint = bodyContainerContent.topAnchor.constraint(
            equalTo: bodyContainer.topAnchor
        )
        bodyContainerContentTopSpaceConstraint.identifier = bodyContainerContentTopSpaceConstraintID
        let bodyContainerContentBottomSpaceConstraint = bodyContainerContent.bottomAnchor.constraint(
            equalTo: bodyContainer.bottomAnchor
        )
        bodyContainerContentBottomSpaceConstraint.identifier = bodyContainerContentBottomSpaceConstraintID
        
        NSLayoutConstraint.activate([
            bodyContainerContentLeadingSpaceConstraint,
            bodyContainerContentTrailingSpaceConstraint,
            bodyContainerContentTopSpaceConstraint,
            bodyContainerContentBottomSpaceConstraint,
        ])
    }
    
    public func setupStyleLayoutOS() {
        titleContainer.uie.constraint(
            with: titleLabelGUILeadingSpaceConstraintID
        )?.constant = 0
        titleContainer.uie.constraint(
            with: titleLabelGUITrailingSpaceConstraintID
        )?.constant = 0
        titleContainer.uie.constraint(
            with: titleLabelGUITopSpaceConstraintID
        )?.constant = 0
        titleContainer.uie.constraint(
            with: titleLabelGUIBottomSpaceConstraintID
        )?.constant = 0
        bodyContainer.uie.constraint(
            with: bodyContainerContentLeadingSpaceConstraintID
        )?.constant = 0
        bodyContainer.uie.constraint(
            with: bodyContainerContentTrailingSpaceConstraintID
        )?.constant = 0
        bodyContainer.uie.constraint(
            with: bodyContainerContentTopSpaceConstraintID
        )?.constant = 0
        bodyContainer.uie.constraint(
            with: bodyContainerContentBottomSpaceConstraintID
        )?.constant = 0
    }
    
    public func setupStyleLayoutSystem(
        _ layoutParams: CardGUIComponentGroupStylePropertiesLayoutParams
    ) {
        if let title = layoutParams.title {
            titleContainer.uie.constraint(
                with: titleLabelGUILeadingSpaceConstraintID
            )?.constant = title.leftMargin
            titleContainer.uie.constraint(
                with: titleLabelGUITrailingSpaceConstraintID
            )?.constant = -title.rightMargin
            titleContainer.uie.constraint(
                with: titleLabelGUITopSpaceConstraintID
            )?.constant = title.topMargin
            titleContainer.uie.constraint(
                with: titleLabelGUIBottomSpaceConstraintID
            )?.constant = -title.bottomMargin
        }
        if let body = layoutParams.body {
            bodyContainer.uie.constraint(
                with: bodyContainerContentLeadingSpaceConstraintID
            )?.constant = body.leftMargin
            bodyContainer.uie.constraint(
                with: bodyContainerContentTrailingSpaceConstraintID
            )?.constant = -body.rightMargin
            bodyContainer.uie.constraint(
                with: bodyContainerContentTopSpaceConstraintID
            )?.constant = body.topMargin
            bodyContainer.uie.constraint(
                with: bodyContainerContentBottomSpaceConstraintID
            )?.constant = -body.bottomMargin
        }
    }
}
