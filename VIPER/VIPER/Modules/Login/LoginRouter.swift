//
//  LoginRouter.swift
//  VIPER
//
//  Created by Mike Pesate on 9/5/18.
//  Copyright © 2018 Mike Pesate. All rights reserved.
//

import Foundation

protocol LoginRouterProtocol: BaseRouterProtocol {
    
    func presentDashboard()
    
}

class LoginRouter: BaseRouter {

}

extension LoginRouter: LoginRouterProtocol {
    
    func presentDashboard() {
        viewController.present(DashboardBuilder.build(), animated: true, completion: nil)
    }
    
}

import UIKit.UIViewController

class DashboardBuilder {
    
    static func build() -> UIViewController {
        let vC = UIViewController()
        vC.view.backgroundColor = .purple
        return vC
    }
    
}
