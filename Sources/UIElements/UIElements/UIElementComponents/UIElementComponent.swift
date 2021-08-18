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
    
    func setupParams(_ params: UIElementComponentSettingsType.UIElementComponentParamsType)
    
    func setupStyleLook(_ look: UIElementComponentSettingsType.UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookType?)
    func setupStyleLookParams(_ lookParams: UIElementComponentSettingsType.UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookParamsType?)
    func setupStyleLayout(_ layoutParams: UIElementComponentSettingsType.UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLayoutParamsType?)
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
    
    private func setupParams() {
        setupParams(settings.params)
    }
}

extension UIElementComponent {
    
    func setupStyle() {
        setupStyleLook()
        setupStyleLookParams()
        setupStyleLayout()
    }
    
    private func setupStyleLook() {
        setupStyleLook(settings.styleProperties?.look)
    }
    
    private func setupStyleLookParams() {
        setupStyleLookParams(settings.styleProperties?.lookParams)
    }
    
    private func setupStyleLayout() {
        setupStyleLayout(settings.styleProperties?.layoutParams)
    }
}
