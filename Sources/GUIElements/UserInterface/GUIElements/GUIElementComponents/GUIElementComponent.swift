//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

public final class GUIElementComponentInitialization {
    
    fileprivate var isRunning: Bool = false
    
    public init() {}
}

public protocol GUIElementComponent:
    GUIElement {
    
    associatedtype GUIElementComponentSettingsType:
        GUIElementComponentSettings
    
    var initialization: GUIElementComponentInitialization {
        get
    }
    
    var settings: GUIElementComponentSettingsType {
        get
        set
    }
    
    init()
    init(
        settings: GUIElementComponentSettingsType
    )
    
    // it's here only for ButtonUIComponent purpose
    func setupSettings()
    
    func setupNestedSettings()
    
    func setupParams(
        _ params: GUIElementComponentSettingsType.GUIElementComponentParamsType
    )
    
    func setupStyleLookOSConfiguration(
        _ lookConfiguration: GUIElementComponentLookOSConfiguration
    )
    func setupStyleLookOS(
        _ look: GUIElementComponentSettingsType.GUIElementComponentStylePropertiesType.GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesOSLookType
    )
    func setupStyleLookSystem(
        _ look: GUIElementComponentSettingsType.GUIElementComponentStylePropertiesType.GUIElementComponentStylePropertiesLookInterfaceType.GUIElementComponentStylePropertiesSystemLookType
    )
    func setupStyleLookParamsOS()
    func setupStyleLookParamsSystem(
        _ lookParams: GUIElementComponentSettingsType.GUIElementComponentStylePropertiesType.GUIElementComponentStylePropertiesLookParamsType
    )
    func setupStyleLayoutInitialization()
    func setupStyleLayoutOS()
    func setupStyleLayoutSystem(
        _ layoutParams: GUIElementComponentSettingsType.GUIElementComponentStylePropertiesType.GUIElementComponentStylePropertiesLayoutParamsType
    )
}

extension GUIElementComponent {
    
    public func setup() {
        initialization.isRunning = true
        setupSettings()
        initialization.isRunning = false
    }
}

extension GUIElementComponent {
    
    public func setupSettings() {
        setupNestedSettings()
        
        setupParams()
        setupStyle()
    }
}

extension GUIElementComponent {
    
    private func setupParams() {
        setupParams(
            settings.params
        )
    }
}

extension GUIElementComponent {
    
    func setupStyle() {
        setupStyleLook()
        setupStyleLookParams()
        setupStyleLayout()
    }
    
    private func setupStyleLook() {
        if case let .os(configuration) = settings.styleType {
            setupStyleLookOSConfiguration(
                configuration.lookConfiguration
            )
        } else {
            switch settings.styleProperties.lookType {
            case .os(let look):
                setupStyleLookOS(
                    look
                )
            case .system(let look):
                setupStyleLookSystem(
                    look
                )
            }
        }
    }
    
    private func setupStyleLookParams() {
        guard let lookParams = settings.styleProperties.lookParams
        else {
            setupStyleLookParamsOS()
            return
        }
        
        setupStyleLookParamsSystem(
            lookParams
        )
    }
    
    private func setupStyleLayout() {
        if initialization.isRunning {
            setupStyleLayoutInitialization()
        }
        
        guard let layoutParams = settings.styleProperties.layoutParams
        else {
            setupStyleLayoutOS()
            return
        }
        
        setupStyleLayoutSystem(
            layoutParams
        )
    }
}
