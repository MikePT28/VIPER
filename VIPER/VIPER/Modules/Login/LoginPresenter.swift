//
//  LoginPresenter.swift
//  VIPER
//
//  Created by Mike Pesate on 9/5/18.
//  Copyright © 2018 Mike Pesate. All rights reserved.
//

import Foundation

protocol LoginViewProtocol: BaseViewProtocol {
    
    func showError(message: String)
    func removeError()
}

protocol LoginPresenterProtocol: BasePresenterProtocol {
    
    func doLogin(email: String?, password: String?)
}

final class LoginPresenter<T: LoginViewProtocol, U: LoginRouterProtocol>: BasePresenter<T, U> {
    
    
}

extension LoginPresenter: LoginPresenterProtocol {
    
    func doLogin(email: String?, password: String?) {
        guard let email = email, let password = password, !email.isEmpty, !password.isEmpty else {
            //Error
            view.showError(message: "Email and password are required!")
            return
        }
        
        _ = email
        _ = password
        
        view.removeError()
    }
    
}
