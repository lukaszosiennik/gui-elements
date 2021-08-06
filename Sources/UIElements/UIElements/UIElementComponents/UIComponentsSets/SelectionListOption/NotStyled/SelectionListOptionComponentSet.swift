//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public class SelectionListOptionComponentSet<Button: UIView>: UIView, SelectionListOptionComponentSetInterface {
    
    let button: Button
    
    public var action: Action?
    
    init(button: Button) {
        self.button = button
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupView()
        setupLayout()
        setupActions()
    }
    
    private func setupView() {}
    
    private func setupLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor),
            button.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
            button.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    func setupActions() {}
}
