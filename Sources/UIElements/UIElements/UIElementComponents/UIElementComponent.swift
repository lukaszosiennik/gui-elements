//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class UIElementComponentInitialization {
    
    fileprivate var isRunning: Bool = false
}

public protocol UIElementComponent: UIElement {
    
    associatedtype UIElementComponentSettingsType: UIElementComponentSettings
    
    var initialization: UIElementComponentInitialization { get }
    
    var settings: UIElementComponentSettingsType { get set }
    
    init(settings: UIElementComponentSettingsType)
    
    func setupNestedSettings()
    
    func setupParams(_ params: UIElementComponentSettingsType.UIElementComponentParamsType)
    
    func setupStyleLookOS()
    func setupStyleLookSystem(_ look: UIElementComponentSettingsType.UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookType)
    func setupStyleLookParamsOS()
    func setupStyleLookParamsSystem(_ lookParams: UIElementComponentSettingsType.UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookParamsType)
    func setupStyleLayoutInitialization()
    func setupStyleLayoutOS()
    func setupStyleLayoutSystem(_ layoutParams: UIElementComponentSettingsType.UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLayoutParamsType)
}

extension UIElementComponent {
    
    func setup() {
        initialization.isRunning = true
        setupSettings()
        initialization.isRunning = false
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
        guard let look = settings.styleProperties?.look else {
            setupStyleLookOS()
            return
        }
        
        setupStyleLookSystem(look)
    }
    
    private func setupStyleLookParams() {
        guard let lookParams = settings.styleProperties?.lookParams else {
            setupStyleLookParamsOS()
            return
        }
        
        setupStyleLookParamsSystem(lookParams)
    }
    
    private func setupStyleLayout() {
        if initialization.isRunning {
            setupStyleLayoutInitialization()
        }
        
        guard let layoutParams = settings.styleProperties?.layoutParams else {
            setupStyleLayoutOS()
            return
        }
        
        setupStyleLayoutSystem(layoutParams)
    }
}
