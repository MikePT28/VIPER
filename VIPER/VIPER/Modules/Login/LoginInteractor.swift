//
//  LoginInteractor.swift
//  VIPER
//
//  Created by Mike Pesate on 9/5/18.
//  Copyright © 2018 Mike Pesate. All rights reserved.
//

import Foundation

enum LoginError: Error {
    case invalidCredentials
    
    var localizedDescription: String {
        switch self {
        case .invalidCredentials:
            return "Username/Password may be incorrect"
        }
    }
}

protocol LoginInteractorProtocol: BaseInteractorProtocol {
    
    func doLogin()
    
}

class LoginInteractor: BaseInteractor {
    
    weak var presenter: LoginPresenterCallbackProtocol!
    
}

extension LoginInteractor: LoginInteractorProtocol {
    
    func doLogin() {
        let rand = arc4random_uniform(2) + 1
        if rand % 2 == 0 {
            presenter.loginSuccess()
        } else {
            presenter.loginFailure(error: .invalidCredentials)
        }
    }
    
}
