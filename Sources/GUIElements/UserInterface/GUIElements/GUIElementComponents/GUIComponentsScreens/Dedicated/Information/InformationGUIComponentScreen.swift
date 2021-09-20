//
//  Created by Łukasz Osiennik on 21/05/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class InformationGUIComponentScreen:
    UIView,
    GUIComponentScreen {
    
    private let titleLabelUI: LabelGUIComponent = .init()
    
    public let initialization: GUIElementComponentInitialization = .init()
    
    public var settings: InformationGUIComponentScreenSettings {
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
        settings: InformationGUIComponentScreenSettings
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
    
    public func setupParams(
        _ params: InformationGUIComponentScreenParams
    ) {}
}

extension InformationGUIComponentScreen {
    
    public func setupScreenStyleLookOS() {
        setupStyleLookOS()
    }
    
    public func setupStyleLookOS(
        _ look: EmptyGUIComponentScreenStylePropertiesOSLook
    ) {
        setupStyleLookOS()
    }
    
    public func setupStyleLookSystem(
        _ look: InformationGUIComponentScreenStylePropertiesSystemLook
    ) {
        backgroundColor = look.backgroundColor
    }
    
    private func setupStyleLookOS() {
        let tempView: UIView = .init()
        tempView.backgroundColor = tempView.backgroundColor
    }
}

extension InformationGUIComponentScreen {
    
    public func setupStyleLookParamsOS() {}
    
    public func setupStyleLookParamsSystem(
        _ lookParams: InformationGUIComponentScreenStylePropertiesLookParams
    ) {}
}

extension InformationGUIComponentScreen {
    
    public func setupStyleLayoutInitialization() {
        titleLabelUI.textAlignment = .center
        
        uie.addSubview(
            titleLabelUI
        )
        
        NSLayoutConstraint.activate([
            titleLabelUI.leadingAnchor.constraint(
                greaterThanOrEqualTo: leadingAnchor
            ),
            titleLabelUI.trailingAnchor.constraint(
                lessThanOrEqualTo: trailingAnchor
            ),
            titleLabelUI.centerXAnchor.constraint(
                equalTo: centerXAnchor
            ),
            titleLabelUI.topAnchor.constraint(
                greaterThanOrEqualTo: topAnchor
            ),
            titleLabelUI.bottomAnchor.constraint(
                lessThanOrEqualTo: bottomAnchor
            ),
            titleLabelUI.centerYAnchor.constraint(
                equalTo: centerYAnchor
            ),
        ])
    }
    
    public func setupStyleLayoutOS() {}
    
    public func setupStyleLayoutSystem(
        _ layoutParams: InformationGUIComponentScreenStylePropertiesLayoutParams
    ) {}
}
