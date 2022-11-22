//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

//MARK: ViewUpdater Protocol
protocol ___VARIABLE_FILENAME___ViewPresenter: AnyObject {
    
}

public class ___VARIABLE_FILENAME___ViewController: UIViewController, ___VARIABLE_FILENAME___ViewPresenter {
    
    //MARK: Variable
    private var viewModel: ___VARIABLE_FILENAME___ViewModel { didSet {
        // Do Somthing ...
    }}
    
    //MARK: LifeCycle
    init(viewModel: ___VARIABLE_FILENAME___ViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
