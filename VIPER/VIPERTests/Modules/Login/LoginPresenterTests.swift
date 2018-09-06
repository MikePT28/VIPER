//
//  LoginPresenterTests.swift
//  VIPERTests
//
//  Created by Mike Pesate on 06/09/2018.
//  Copyright © 2018 Mike Pesate. All rights reserved.
//

import XCTest
@testable import VIPER

class LoginPresenterTests: XCTestCase {
    
    class LoginViewSpy: LoginViewProtocol {
        var errorMessageShown: Bool = false
        var errorMessageRemoved: Bool = false
        var errorMessage: String = ""
        
        func showError(message: String) {
            errorMessageShown = true
            errorMessage = message
        }
        
        func removeError() {
            errorMessageRemoved = true
        }
        
    }
    
    func testLoginSuccess() {
        
        let spy = LoginViewSpy()
        let interactorMock = LoginInteractorSuccessMock()
        let routerMock = LoginRouterMock()
        let sut = LoginPresenter(view: spy, router: routerMock, loginInteractor: interactorMock)
        interactorMock.presenter = sut
        
        sut.doLogin(email: "aa@a", password: "1234")
        
        XCTAssertTrue(spy.errorMessageRemoved)
    }
    
    func testLoginFailure() {
        
        let spy = LoginViewSpy()
        let interactorMock = LoginInteractorFailureMock()
        let routerMock = LoginRouterMock()
        let sut = LoginPresenter(view: spy, router: routerMock, loginInteractor: interactorMock)
        interactorMock.presenter = sut
        
        sut.doLogin(email: "aa@a", password: "1234")
        
        XCTAssertTrue(spy.errorMessageShown)
        XCTAssertEqual(spy.errorMessage, LoginError.invalidCredentials.localizedDescription)
    }
    
    func testLoginNoData() {
        
        let spy = LoginViewSpy()
        let interactorMock = LoginInteractorSuccessMock()
        let routerMock = LoginRouterMock()
        let sut = LoginPresenter(view: spy, router: routerMock, loginInteractor: interactorMock)
        interactorMock.presenter = sut
        
        sut.doLogin(email: nil, password: nil)
        
        XCTAssertTrue(spy.errorMessageShown)
        XCTAssertEqual(spy.errorMessage, "Email and password are required!")
        
    }
    
    func testLoginWrongEmail() {
        
        let spy = LoginViewSpy()
        let interactorMock = LoginInteractorSuccessMock()
        let routerMock = LoginRouterMock()
        let sut = LoginPresenter(view: spy, router: routerMock, loginInteractor: interactorMock)
        interactorMock.presenter = sut
        
        sut.doLogin(email: "aa.com", password: "password")
        
        XCTAssertTrue(spy.errorMessageShown)
        XCTAssertEqual(spy.errorMessage, "Please enter a valid 'email' address")
        
    }
    
    func testLoginWrongPassword() {
        
        let spy = LoginViewSpy()
        let interactorMock = LoginInteractorSuccessMock()
        let routerMock = LoginRouterMock()
        let sut = LoginPresenter(view: spy, router: routerMock, loginInteractor: interactorMock)
        interactorMock.presenter = sut
        
        sut.doLogin(email: "aa@a.com", password: "0")
        
        XCTAssertTrue(spy.errorMessageShown)
        XCTAssertEqual(spy.errorMessage, "Please enter a valid 'password'")
        
    }
    
}
