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
    
    public func setupStyleLook(_ look: InformationUIComponentScreenStylePropertiesLook?) {
        guard let look = look else {
            if settings.styleType != .os(false) {
                backgroundColor = .white
            } else {
                let tempView = UIView()
                backgroundColor = tempView.backgroundColor
            }
            return
        }
        
        backgroundColor = look.backgroundColor
    }
    
    public func setupStyleLookParams(_ lookParams: InformationUIComponentScreenStylePropertiesLookParams?) {
        guard let lookParams = lookParams else {
            return
        }
    }
    
    public func setupStyleLayout(_ layoutParams: InformationUIComponentScreenStylePropertiesLayoutParams?) {
        if initialization {
            titleLabelUI.textAlignment = .center
            
            translatesAutoresizingMaskIntoConstraints = false
            
            addSubview(titleLabelUI)
            
            NSLayoutConstraint.activate([
                titleLabelUI.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor),
                titleLabelUI.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
                titleLabelUI.centerXAnchor.constraint(equalTo: centerXAnchor),
                titleLabelUI.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
                titleLabelUI.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor),
                titleLabelUI.centerYAnchor.constraint(equalTo: centerYAnchor),
            ])
        }
        
        guard let layoutParams = layoutParams else {
            return
        }
    }
}
