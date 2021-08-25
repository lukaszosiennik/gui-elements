//
//  Created by Łukasz Osiennik on 21/05/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class InformationUIComponentScreen: UIView, UIComponentScreen {
    
    private let titleLabelUI = LabelUIComponent()
    
    public let initialization = UIElementComponentInitialization()
    
    public var settings: InformationUIComponentScreenSettings {
        didSet {
            setupSettings()
        }
    }
    
    public convenience init() {
        self.init(settings: .default)
    }
    
    public init(settings: InformationUIComponentScreenSettings) {
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
                    linesNumber: settings.styleProperties.lookParams?.titleLinesNumber
                )
            )
        )
    }
    
    public func setupParams(_ params: InformationUIComponentScreenParams) {}
}

extension InformationUIComponentScreen {
    
    public func setupScreenStyleLookOS() {}
    
    public func setupStyleLookSystem(_ look: InformationUIComponentScreenStylePropertiesLook) {
        backgroundColor = look.backgroundColor
    }
}

extension InformationUIComponentScreen {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(_ lookParams: InformationUIComponentScreenStylePropertiesLookParams) {}
}

extension InformationUIComponentScreen {
    
    public func setupStyleLayoutInitialization() {
        titleLabelUI.textAlignment = .center
        
        uie.addSubview(titleLabelUI)
        
        NSLayoutConstraint.activate([
            titleLabelUI.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor),
            titleLabelUI.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            titleLabelUI.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabelUI.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
            titleLabelUI.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor),
            titleLabelUI.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(_ layoutParams: InformationUIComponentScreenStylePropertiesLayoutParams) {}
}
