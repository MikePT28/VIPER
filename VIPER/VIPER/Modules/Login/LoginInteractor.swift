//
//  LoginInteractor.swift
//  VIPER
//
//  Created by Mike Pesate on 9/5/18.
//  Copyright © 2018 Mike Pesate. All rights reserved.
//

import Foundation

protocol LoginInteractorProtocol: BaseInteractorProtocol {
    
    func doLogin()
    
}

class LoginInteractor: BaseInteractor {
    
    weak var presenter: LoginPresenterCallbackProtocol!
    
}

extension LoginInteractor: LoginInteractorProtocol {
    
    func doLogin() {
        presenter.loginSuccess()
    }
    
}
