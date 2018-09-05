//
//  LoginBuilder.swift
//  VIPER
//
//  Created by Mike Pesate on 9/5/18.
//  Copyright © 2018 Mike Pesate. All rights reserved.
//

import Foundation
import UIKit.UIViewController

final class LoginBuilder {
    
    static func build() -> UIViewController {
        
        let view: LoginView = LoginView()
        let router: LoginRouter = LoginRouter(view: view)
        let presenter: LoginPresenter = LoginPresenter(view: view, router: router)
        view.presenter = presenter
        
        return view
    }
    
}
