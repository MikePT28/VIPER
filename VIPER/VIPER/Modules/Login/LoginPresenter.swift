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

protocol LoginPresenterCallbackProtocol: BasePresenterCallbackProtocol {
    
    func loginSuccess()
    func loginFailure(error: LoginError)
    
}

final class LoginPresenter<T: LoginViewProtocol, U: LoginRouterProtocol>: BasePresenter<T, U> {
    
    fileprivate let loginInteractor: LoginInteractorProtocol
    fileprivate let emailValidator: EmailValidatable
    fileprivate let passwordValidator: PasswordValidatable
    
    init(view: T,
         router: U,
         loginInteractor: LoginInteractorProtocol,
         emailValidator: EmailValidatable = EmailValidator(),
         passwordValidator: PasswordValidatable = PasswordValidator()) {
        self.emailValidator = emailValidator
        self.passwordValidator = passwordValidator
        self.loginInteractor = loginInteractor
        super.init(view: view, router: router)
    }
    
    
}

extension LoginPresenter: LoginPresenterProtocol {
    
    func doLogin(email: String?, password: String?) {
        guard let email = email, let password = password, !email.isEmpty, !password.isEmpty else {
            //Error
            view.showError(message: "Email and password are required!")
            return
        }
        guard emailValidator.validate(email) else {
            view.showError(message: "Please enter a valid 'email' address")
            return
        }
        guard passwordValidator.validate(password) else {
            view.showError(message: "Please enter a valid 'password'")
            return
        }
        
        loginInteractor.doLogin(email: email, password: password)
    }
    
}

extension LoginPresenter: LoginPresenterCallbackProtocol {
    
    func loginSuccess() {
        view.removeError()
        router.presentDashboard()
    }
    
    func loginFailure(error: LoginError) {
        view.showError(message: error.localizedDescription)
    }
    
}

