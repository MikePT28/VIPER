//
//  LoginInteractorTests.swift
//  VIPERTests
//
//  Created by Mike Pesate on 06/09/2018.
//  Copyright © 2018 Mike Pesate. All rights reserved.
//

import XCTest
@testable import VIPER

class LoginInteractorTests: XCTestCase {

    class LoginPresenterSpy: LoginInteractorCallbackProtocol {
        var isLoginSuccessful: Bool = false
        var isLoginError: Bool = false
        var loginError: LoginError? = nil
        
        func loginFailure(error: LoginError) {
            isLoginError = true
            loginError = error
        }
        
        func loginSuccess() {
            isLoginSuccessful = true
        }
        
    }
    
    func testLoginSuccess() {
        
        let spy = LoginPresenterSpy()
        let sut = LoginInteractor()
        sut.presenter = spy
        
        sut.doLogin(email: "m@m.com", password: "1234")
        
        XCTAssertTrue(spy.isLoginSuccessful)
        
    }
    
    func testLoginFailure() {
        
        let spy = LoginPresenterSpy()
        let sut = LoginInteractor()
        sut.presenter = spy
        
        sut.doLogin(email: "wrong", password: "wrong")
        
        XCTAssertTrue(spy.isLoginError)
        XCTAssertNotNil(spy.loginError)
        XCTAssertEqual(spy.loginError!, .invalidCredentials)
        
    }
}
