//
//  BaseRouter.swift
//  VIPER
//
//  Created by Mike Pesate on 9/5/18.
//  Copyright © 2018 Mike Pesate. All rights reserved.
//

import Foundation
import UIKit.UIViewController

public protocol BaseRouterProtocol: class { }

open class BaseRouter {
    
    fileprivate unowned let viewController: UIViewController
    
    init(view: UIViewController) {
        self.viewController = view
    }
    
}
