//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol ButtonGUIComponentInterface:
    GUIComponent
where
    GUIElementComponentSettingsType
        == ButtonGUIComponentSettings {}

extension ButtonGUIComponentInterface {
    
    func setupParams(
        _ params: ButtonGUIComponentParams,
        for button: UIButton
    ) {
        button.setTitle(
            params.title,
            for: .normal
        )
    }
}

extension ButtonGUIComponentInterface {
    
    func setupStyleLookOSConfiguration(
        _ lookConfiguration: GUIElementComponentLookOSConfiguration,
        for button: UIButton
    ) {
        setupStyleLookOS(
            for: button
        )
    }
    
    func setupStyleLookOS(
        _ look: ButtonGUIComponentStylePropertiesOSLook,
        for button: UIButton
    ) {
        setupStyleLookOS(
            for: button
        )
    }
    
    func setupStyleLookSystem(
        _ look: ButtonGUIComponentStylePropertiesSystemLook,
        for button: UIButton
    ) {
        button.setTitleColor(
            look.titleColorNormal,
            for: .normal
        )
        button.setTitleColor(
            look.titleColorHighlighted,
            for: .highlighted
        )
    }
    
    private func setupStyleLookOS(for button: UIButton) {
        let tempButton: UIButton = .init(
            type: button.buttonType
        )
        button.setTitleColor(
            tempButton.titleColor(
                for: .normal
            ),
            for: .normal
        )
        button.setTitleColor(
            tempButton.titleColor(
                for: .highlighted
            ),
            for: .highlighted
        )
    }
}

extension ButtonGUIComponentInterface {
    
    func setupStyleLookParamsOS(
        for button: UIButton
    ) {}
    
    func setupStyleLookParamsSystem(
        _ lookParams: EmptyGUIComponentStylePropertiesLookParams,
        for button: UIButton
    ) {}
}

extension ButtonGUIComponentInterface {
    
    func setupStyleLayoutInitialization(
        for button: UIButton
    ) {}
    
    func setupStyleLayoutOS(
        for button: UIButton
    ) {}
    
    func setupStyleLayoutSystem(
        _ layoutParams: ButtonGUIComponentStylePropertiesLayoutParams,
        for button: UIButton
    ) {}
}
