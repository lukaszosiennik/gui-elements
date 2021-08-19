//
//  Created by Łukasz Osiennik on 21/05/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class InformationUIComponentScreen: UIView, UIComponentScreen {
    
    private let titleLabelUI = LabelUIComponent()
    
    public var initialization: Bool = false
    
    public var settings: InformationUIComponentScreenSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: InformationUIComponentScreenSettings = .default) {
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
    
    public func setupParams(_ params: InformationUIComponentScreenParams) {}
}

extension InformationUIComponentScreen {
    
    public func setupStyleLookOS() {
        if settings.styleType == .os(true) {
            backgroundColor = .white
        } else {
            let tempView = UIView()
            backgroundColor = tempView.backgroundColor
        }
    }
    
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
        
        add(subview: titleLabelUI)
        
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
