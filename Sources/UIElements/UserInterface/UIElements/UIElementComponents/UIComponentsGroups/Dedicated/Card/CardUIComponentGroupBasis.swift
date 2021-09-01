//
//  Created by Łukasz Osiennik on 12/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public class CardUIComponentGroupBasis<
    BodyViewType: UIView,
    BodyUIElementComponentSettingsType: UIElementComponentSettings
>:
    UIView,
    UIComponentGroup {

    private let titleContainer: UIView = .init()
    private let titleLabelUI: LabelUIComponent = .init()
    
    private let separatorView: UIView = .init()
    
    private let bodyContainer: UIView = .init()
    let bodyContainerContent: BodyViewType = .init()
    
    private let titleLabelUILeadingSpaceConstraintID: String = "titleLabelUILeadingSpace"
    private let titleLabelUITrailingSpaceConstraintID: String = "titleLabelUITrailingSpace"
    private let titleLabelUITopSpaceConstraintID: String = "titleLabelUITopSpace"
    private let titleLabelUIBottomSpaceConstraintID: String = "titleLabelUIBottomSpace"
    
    private let separatorViewHeightConstraintID: String = "separatorViewHeight"
    
    private let bodyContainerContentLeadingSpaceConstraintID: String = "bodyContainerContentLeadingSpace"
    private let bodyContainerContentTrailingSpaceConstraintID: String = "bodyContainerContentTrailingSpace"
    private let bodyContainerContentTopSpaceConstraintID: String = "bodyContainerContentTopSpace"
    private let bodyContainerContentBottomSpaceConstraintID: String = "bodyContainerContentBottomSpace"
    
    public let initialization: UIElementComponentInitialization = .init()
    
    public var settings: CardUIComponentGroupSettings<BodyUIElementComponentSettingsType> {
        didSet {
            setupSettings()
        }
    }
    
    public convenience required init() {
        self.init(settings: .default)
    }
    
    public required init(settings: CardUIComponentGroupSettings<BodyUIElementComponentSettingsType> = .default) {
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
            styleType: settings.styleType
        )
        
        setupBodyNestedSettings()
    }
    
    func setupBodyNestedSettings() {}
    
    public func setupParams(_ params: CardUIComponentGroupParams) {}
}

extension CardUIComponentGroupBasis {
    
    public func setupStyleLookOSConfiguration(_ lookConfiguration: UIElementComponentLookOSConfiguration) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookOS(_ look: EmptyUIComponentGroupStylePropertiesOSLook) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookSystem(_ look: CardUIComponentGroupStylePropertiesSystemLook) {
        if let whole = look.whole {
            if let border = whole.border {
                switch border.corners {
                case .square:
                    layer.cornerRadius = 0
                case .rounded:
                    layer.cornerRadius = 5
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
        layer.borderWidth = tempView.layer.borderWidth
        layer.borderColor = tempView.layer.borderColor
        separatorView.isHidden = true
        separatorView.backgroundColor = tempView.backgroundColor
        titleContainer.backgroundColor = tempView.backgroundColor
        bodyContainer.backgroundColor = tempView.backgroundColor
    }
}

extension CardUIComponentGroupBasis {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(_ lookParams: EmptyUIComponentGroupStylePropertiesLookParams) {}
}

extension CardUIComponentGroupBasis {
    
    public func setupStyleLayoutInitialization() {
        titleLabelUI.textAlignment = .center
        
        uie.addSubview(titleContainer)
        titleContainer.uie.addSubview(titleLabelUI)
        uie.addSubview(separatorView)
        uie.addSubview(bodyContainer)
        bodyContainer.uie.addSubview(bodyContainerContent)
        
        NSLayoutConstraint.activate([
            titleContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleContainer.topAnchor.constraint(equalTo: topAnchor),
            titleContainer.bottomAnchor.constraint(equalTo: separatorView.topAnchor),
        ])
        
        let titleLabelUILeadingSpaceConstraint = titleLabelUI.leadingAnchor.constraint(greaterThanOrEqualTo: titleContainer.leadingAnchor)
        titleLabelUILeadingSpaceConstraint.identifier = titleLabelUILeadingSpaceConstraintID
        let titleLabelUITrailingSpaceConstraint = titleLabelUI.trailingAnchor.constraint(lessThanOrEqualTo: titleContainer.trailingAnchor)
        titleLabelUITrailingSpaceConstraint.identifier = titleLabelUITrailingSpaceConstraintID
        let titleLabelUITopSpaceConstraint = titleLabelUI.topAnchor.constraint(greaterThanOrEqualTo: titleContainer.topAnchor)
        titleLabelUITopSpaceConstraint.identifier = titleLabelUITopSpaceConstraintID
        let titleLabelUIBottomSpaceConstraint = titleLabelUI.bottomAnchor.constraint(lessThanOrEqualTo: titleContainer.bottomAnchor)
        titleLabelUIBottomSpaceConstraint.identifier = titleLabelUIBottomSpaceConstraintID
        
        NSLayoutConstraint.activate([
            titleLabelUILeadingSpaceConstraint,
            titleLabelUITrailingSpaceConstraint,
            titleLabelUI.centerXAnchor.constraint(equalTo: titleContainer.centerXAnchor),
            titleLabelUITopSpaceConstraint,
            titleLabelUIBottomSpaceConstraint,
            titleLabelUI.centerYAnchor.constraint(equalTo: titleContainer.centerYAnchor),
        ])
        
        let separatorViewHeightConstraint = separatorView.heightAnchor.constraint(equalToConstant: 1)
        separatorViewHeightConstraint.identifier = separatorViewHeightConstraintID
        
        NSLayoutConstraint.activate([
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorViewHeightConstraint
        ])
        
        NSLayoutConstraint.activate([
            bodyContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            bodyContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            bodyContainer.topAnchor.constraint(equalTo: separatorView.bottomAnchor),
            bodyContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
        let bodyContainerContentLeadingSpaceConstraint = bodyContainerContent.leadingAnchor.constraint(equalTo: bodyContainer.leadingAnchor)
        bodyContainerContentLeadingSpaceConstraint.identifier = bodyContainerContentLeadingSpaceConstraintID
        let bodyContainerContentTrailingSpaceConstraint = bodyContainerContent.trailingAnchor.constraint(equalTo: bodyContainer.trailingAnchor)
        bodyContainerContentTrailingSpaceConstraint.identifier = bodyContainerContentTrailingSpaceConstraintID
        let bodyContainerContentTopSpaceConstraint = bodyContainerContent.topAnchor.constraint(equalTo: bodyContainer.topAnchor)
        bodyContainerContentTopSpaceConstraint.identifier = bodyContainerContentTopSpaceConstraintID
        let bodyContainerContentBottomSpaceConstraint = bodyContainerContent.bottomAnchor.constraint(equalTo: bodyContainer.bottomAnchor)
        bodyContainerContentBottomSpaceConstraint.identifier = bodyContainerContentBottomSpaceConstraintID
        
        NSLayoutConstraint.activate([
            bodyContainerContentLeadingSpaceConstraint,
            bodyContainerContentTrailingSpaceConstraint,
            bodyContainerContentTopSpaceConstraint,
            bodyContainerContentBottomSpaceConstraint,
        ])
    }
    
    public func setupStyleLayoutOS() {
        uie.constraint(with: titleLabelUILeadingSpaceConstraintID)?.constant = 0
        uie.constraint(with: titleLabelUITrailingSpaceConstraintID)?.constant = 0
        uie.constraint(with: titleLabelUITopSpaceConstraintID)?.constant = 0
        uie.constraint(with: titleLabelUIBottomSpaceConstraintID)?.constant = 0
        uie.constraint(with: bodyContainerContentLeadingSpaceConstraintID)?.constant = 0
        uie.constraint(with: bodyContainerContentTrailingSpaceConstraintID)?.constant = 0
        uie.constraint(with: bodyContainerContentTopSpaceConstraintID)?.constant = 0
        uie.constraint(with: bodyContainerContentBottomSpaceConstraintID)?.constant = 0
    }
    
    public func setupStyleLayoutSystem(_ layoutParams: CardUIComponentGroupStylePropertiesLayoutParams) {
        if let title = layoutParams.title {
            uie.constraint(with: titleLabelUILeadingSpaceConstraintID)?.constant = title.leftMargin
            uie.constraint(with: titleLabelUITrailingSpaceConstraintID)?.constant = -title.rightMargin
            uie.constraint(with: titleLabelUITopSpaceConstraintID)?.constant = title.topMargin
            uie.constraint(with: titleLabelUIBottomSpaceConstraintID)?.constant = -title.bottomMargin
        }
        if let body = layoutParams.body {
            uie.constraint(with: bodyContainerContentLeadingSpaceConstraintID)?.constant = body.leftMargin
            uie.constraint(with: bodyContainerContentTrailingSpaceConstraintID)?.constant = -body.rightMargin
            uie.constraint(with: bodyContainerContentTopSpaceConstraintID)?.constant = body.topMargin
            uie.constraint(with: bodyContainerContentBottomSpaceConstraintID)?.constant = -body.bottomMargin
        }
    }
}
