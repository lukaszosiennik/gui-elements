//
//  Created by Łukasz Osiennik on 24/07/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public final class GUIElementComponentInitialization {
    
    fileprivate var isRunning: Bool = false
    
    public init() {}
}

public protocol GUIElementComponent:
    GUIElement {
    
    associatedtype Settings:
        GUIElementComponentSettings
    
    var initialization: GUIElementComponentInitialization {
        get
    }
    
    var settings: Settings {
        get
        set
    }
    
    init()
    init(
        settings: Settings
    )
    
    // it's here only for ButtonGUIComponent purpose
    func setupSettings()
    
    func setupNestedSettings()
    
    func setupParams(
        _ params: Settings.Params
    )
    
    func setupStyleLookOSConfiguration(
        _ lookConfiguration: GUIElementComponentLookOSConfiguration
    )
    func setupStyleLookOS(
        _ look: Settings.StyleProperties.Look.OSLook
    )
    func setupStyleLookSystem(
        _ look: Settings.StyleProperties.Look.SystemLook
    )
    func setupStyleLookParamsOS()
    func setupStyleLookParamsSystem(
        _ lookParams: Settings.StyleProperties.LookParams
    )
    func setupStyleLayoutInitialization()
    func setupStyleLayoutOS()
    func setupStyleLayoutSystem(
        _ layoutParams: Settings.StyleProperties.LayoutParams
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
