//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public protocol UIElementComponent: UIElement {
    
    associatedtype UIElementComponentSettingsType: UIElementComponentSettings
    
    var initialization: Bool { get set }
    
    var settings: UIElementComponentSettingsType { get set }
    
    init(settings: UIElementComponentSettingsType)
    
    func setupNestedSettings()
    
    func setupParams()
    
    func setupStyleLook()
    func setupStyleLookParams()
    func setupStyleLayout()
}

extension UIElementComponent {
    
    func setup() {
        initialization = true
        setupSettings()
        initialization = false
    }
}

extension UIElementComponent {
    
    func setupSettings() {
        setupNestedSettings()
        
        setupParams()
        setupStyle()
    }
}

extension UIElementComponent {
    
    func setupStyle() {
        setupStyleLook()
        setupStyleLookParams()
        setupStyleLayout()
    }
}
