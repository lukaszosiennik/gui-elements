//
//  Created by Łukasz Osiennik on 03/08/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public protocol ButtonUIComponentInterface: UIComponent
where
    UIElementComponentSettingsType == ButtonUIComponentSettings {}

extension ButtonUIComponentInterface {
    
    func setupParams(
        _ params: ButtonUIComponentParams,
        for button: UIButton
    ) {
        button.setTitle(
            params.title,
            for: .normal
        )
    }
}

extension ButtonUIComponentInterface {
    
    func setupStyleLookOSConfiguration(
        _ lookConfiguration: UIElementComponentLookOSConfiguration,
        for button: UIButton
    ) {
        let tempButton: UIButton = .init(
            type: button.buttonType
        )
        button.setTitleColor(
            tempButton.titleColor(for: .normal),
            for: .normal
        )
        button.setTitleColor(
            tempButton.titleColor(for: .highlighted),
            for: .highlighted
        )
    }
    
    func setupStyleLookOS(
        _ look: ButtonUIComponentStylePropertiesOSLook,
        for button: UIButton
    ) {}
    
    func setupStyleLookSystem(
        _ look: ButtonUIComponentStylePropertiesSystemLook,
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
}

extension ButtonUIComponentInterface {
    
    func setupStyleLookParamsOS(for button: UIButton) {}
    
    func setupStyleLookParamsSystem(
        _ lookParams: EmptyUIComponentStylePropertiesLookParams,
        for button: UIButton
    ) {}
}

extension ButtonUIComponentInterface {
    
    func setupStyleLayoutInitialization(for button: UIButton) {}
    
    func setupStyleLayoutOS(for button: UIButton) {}
    
    func setupStyleLayoutSystem(
        _ layoutParams: ButtonUIComponentStylePropertiesLayoutParams,
        for button: UIButton
    ) {}
}
