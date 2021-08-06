//
//  Created by Łukasz Osiennik on 06/08/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

import UIKit

public final class SelectionListComponentScreen<OptionKey, OptionView: SelectionListOptionComponentSetInterface>: UIView {
    
    private let viewContainer = UIView()
    
    private let selectionList: SelectionListComponentSet<OptionKey, OptionView>
    
    public var optionViewAction: ((OptionKey) -> Void)? {
        get {
            return selectionList.optionViewAction
        }
        set {
            selectionList.optionViewAction = newValue
        }
    }
    
    public init(selectionList: SelectionListComponentSet<OptionKey, OptionView>) {
        self.selectionList = selectionList
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
        backgroundColor = .white
    }
    
    private func setupLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(viewContainer)
        viewContainer.addSubview(selectionList)
        
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            viewContainer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            viewContainer.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            viewContainer.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        ])
        
        selectionList.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            selectionList.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor),
            selectionList.trailingAnchor.constraint(equalTo: viewContainer.trailingAnchor),
            selectionList.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor),
        ])
    }
}
