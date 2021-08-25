//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class UIElementComponentInitialization {
    
    fileprivate var isRunning: Bool = false
    
    public init() {}
}

public protocol UIElementComponent: UIElement {
    
    associatedtype UIElementComponentSettingsType: UIElementComponentSettings
    
    var initialization: UIElementComponentInitialization { get }
    
    var settings: UIElementComponentSettingsType { get set }
    
    init()
    init(settings: UIElementComponentSettingsType)
    
    // it's here only for ButtonUIComponent purpose
    func setupSettings()
    
    func setupNestedSettings()
    
    func setupParams(_ params: UIElementComponentSettingsType.UIElementComponentParamsType)
    
    func setupStyleLookOS(_ look: BasicOSUIElementComponentStylePropertiesLook)
    func setupStyleLookSystem(_ look: UIElementComponentSettingsType.UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookType)
    func setupStyleLookParamsOS()
    func setupStyleLookParamsSystem(_ lookParams: UIElementComponentSettingsType.UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLookParamsType)
    func setupStyleLayoutInitialization()
    func setupStyleLayoutOS()
    func setupStyleLayoutSystem(_ layoutParams: UIElementComponentSettingsType.UIElementComponentStylePropertiesType.UIElementComponentStylePropertiesLayoutParamsType)
}

extension UIElementComponent {
    
    public func setup() {
        initialization.isRunning = true
        setupSettings()
        initialization.isRunning = false
    }
}

extension UIElementComponent {
    
    public func setupSettings() {
        setupNestedSettings()
        
        setupParams()
        setupStyle()
    }
}

extension UIElementComponent {
    
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
        if case let .os(styleProperties) = settings.styleType {
            setupStyleLookOS(styleProperties.look)
        } else {
            switch settings.styleProperties.lookSort {
            case .os(let look):
                setupStyleLookOS(look.toBasic())
            case .system(let look):
                setupStyleLookSystem(look)
            }
        }
    }
    
    private func setupStyleLookParams() {
        guard let lookParams = settings.styleProperties.lookParams else {
            setupStyleLookParamsOS()
            return
        }
        
        setupStyleLookParamsSystem(lookParams)
    }
    
    private func setupStyleLayout() {
        if initialization.isRunning {
            setupStyleLayoutInitialization()
        }
        
        guard let layoutParams = settings.styleProperties.layoutParams else {
            setupStyleLayoutOS()
            return
        }
        
        setupStyleLayoutSystem(layoutParams)
    }
}
