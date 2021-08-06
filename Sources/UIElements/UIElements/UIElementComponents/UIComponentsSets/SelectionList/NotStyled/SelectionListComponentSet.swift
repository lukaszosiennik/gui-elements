//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class SelectionListComponentSet<OptionKey, OptionView: SelectionListOptionComponentSetInterface>: UIView {
    
    private let titleLabel = UILabel()
    
    private let stackViewBackground = UIView()
    private let stackView = UIStackView()
    
    private let optionViewHeight: CGFloat = 50
    private let stackViewSpacing: CGFloat = 8
    
    private let options: KeyValuePairs<OptionKey, String>
    
    private let optionViewInit: (String) -> OptionView
    
    public var optionViewAction: ((OptionKey) -> Void)?
    
    public init(title: String, options: KeyValuePairs<OptionKey, String>, optionViewInit: @escaping (String) -> OptionView) {
        self.titleLabel.text = title
        self.options = options
        self.optionViewInit = optionViewInit

        super.init(frame: .zero)

        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupView()
        setupLayout()
    }
    
    private func setupView() {
        stackView.axis = .vertical
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.spacing = stackViewSpacing
        stackView.alignment = UIStackView.Alignment.fill
        
        options.forEach { option in
            let optionView = optionViewInit(option.value)
            
            optionView.action = { [weak self] in
                self?.optionViewAction?(option.key)
            }
            
            stackView.addArrangedSubview(optionView)
        }
    }
    
    private func setupLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        addSubview(stackViewBackground)
        addSubview(stackView)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            titleLabel.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -16),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
        stackViewBackground.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewBackground.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            stackViewBackground.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            stackViewBackground.topAnchor.constraint(equalTo: stackView.topAnchor),
            stackViewBackground.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
        ])
        
        stackView.arrangedSubviews.forEach { optionView in
            NSLayoutConstraint.activate([
                optionView.heightAnchor.constraint(equalToConstant: optionViewHeight),
            ])
        }
    }
}
