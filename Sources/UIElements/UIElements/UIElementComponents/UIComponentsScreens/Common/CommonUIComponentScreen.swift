//
//  Created by Łukasz Osiennik on 21/05/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class CommonUIComponentScreen: UIView, UIComponentScreen {
    
    private let titleLabel = LabelUIComponent()
    
    public var settings: CommonUIComponentScreenSettings {
        didSet {
            setupSettings()
        }
    }
    
    public init(settings: CommonUIComponentScreenSettings = .default) {
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
    
    public func setupParams() {
        titleLabel.settings.params = .init(text: settings.params.title)
    }
    
    public func setupNestedStyle() {
        titleLabel.settings.styleType = settings.stylePack.style.type
    }
    
    public func setupStyleLook() {
        guard let styleProperties = settings.stylePack.style.properties else {
            return
        }
        
        backgroundColor = styleProperties.look.backgroundColor
    }
    
    public func setupStyleLayout() {
        addSubview(titleLabel)
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        guard let styleLayoutParams = settings.stylePack.style.properties?.layoutParams else {
            return
        }
    }
}
