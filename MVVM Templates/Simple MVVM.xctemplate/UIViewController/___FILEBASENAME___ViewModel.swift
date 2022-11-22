//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

//MARK: Protocol
protocol ___VARIABLE_FILENAME___ViewModelProtocol {
    
}

final class ___VARIABLE_FILENAME___ViewModel: NSObject, ___VARIABLE_FILENAME___ViewModelProtocol {
    
    //MARK: Variable
    weak var delegate: ___VARIABLE_FILENAME___ViewPresenter?

    //MARK: LifeCycle
    init(delegate: ___VARIABLE_FILENAME___ViewPresenter) {
        self.delegate = delegate
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
