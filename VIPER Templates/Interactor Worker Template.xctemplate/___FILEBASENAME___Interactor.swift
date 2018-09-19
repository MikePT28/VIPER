//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_productName:identifier___InteractorProtocol: BaseInteractorProtocol {

}

protocol ___VARIABLE_productName:identifier___InteractorCallbackProtocol: BaseInteractorCallbackProtocol {

}

class ___VARIABLE_productName:identifier___Interactor: BaseInteractor {

    weak var presenter: ___VARIABLE_productName:identifier___InteractorCallbackProtocol!
    fileprivate let worker: ___VARIABLE_productName:identifier___WorkerAlias

    init(with___VARIABLE_productName:identifier___Worker worker: ___VARIABLE_productName:identifier___WorkerAlias = ___VARIABLE_productName:identifier___Worker()) {
        self.worker = worker
        super.init()
    }
}

extension ___VARIABLE_productName:identifier___Interactor: ___VARIABLE_productName:identifier___InteractorProtocol {

}
