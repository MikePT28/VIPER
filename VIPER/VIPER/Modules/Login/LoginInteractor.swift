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
    
    func doLogin(email: String, password: String)
    
}

class LoginInteractor: BaseInteractor {
    
    weak var presenter: LoginPresenterCallbackProtocol!
    
}

extension LoginInteractor: LoginInteractorProtocol {
    
    func doLogin(email: String, password: String) {
        
        if email == "m@m.com" && password == "1234" {
            presenter.loginSuccess()
        } else {
            presenter.loginFailure(error: .invalidCredentials)
        }
    }
    
}
