//
//  Created by Łukasz Osiennik on 05/10/2021.
//  Copyright © 2021 open plainness (https://www.openplainness.com). All rights reserved.
//

final class InformationGUIComponentScreenViewModel {
    
    private let input: Input
    
    init(
        input: Input
    ) {
        self.input = input
    }
    
    var output: Output {
        return input
    }
}
