//
//  Created by Łukasz Osiennik on 21/05/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class InformationUIComponentScreen: UIView, UIComponentScreen {
    
    private let titleLabelUI = LabelUIComponent()
    
    private var initialization: Bool = false
    
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
    
    public func setupParams() {}
    
    public func setupStyleLook() {
        guard let styleProperties = settings.stylePack.style.properties else {
            if settings.styleType != .os(false) {
                backgroundColor = .white
            } else {
                let tempView = UIView()
                backgroundColor = tempView.backgroundColor
            }
            return
        }
        
        backgroundColor = styleProperties.look.backgroundColor
    }
    
    public func setupStyleLayout() {
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
        
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
    }
}
