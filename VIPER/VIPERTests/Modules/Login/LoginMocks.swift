//
//  LoginMocks.swift
//  VIPERTests
//
//  Created by Mike Pesate on 06/09/2018.
//  Copyright © 2018 Mike Pesate. All rights reserved.
//

import Foundation
@testable import VIPER

class LoginInteractorSuccessMock: LoginInteractorProtocol {
    var presenter: LoginPresenterCallbackProtocol!
    
    func doLogin(email: String, password: String) {
        presenter.loginSuccess()
    }
    
}

class LoginInteractorFailureMock: LoginInteractorProtocol {
    var presenter: LoginPresenterCallbackProtocol!
    
    func doLogin(email: String, password: String) {
        presenter.loginFailure(error: .invalidCredentials)
    }
    
}
