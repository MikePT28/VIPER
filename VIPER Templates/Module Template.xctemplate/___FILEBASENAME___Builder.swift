//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit.UIViewController

final class ___VARIABLE_productName:identifier___Builder: BaseBuilder {

    static func build() -> UIViewController {

        let viewController: ___VARIABLE_productName:identifier___ViewController = ___VARIABLE_productName:identifier___ViewController()
        let router: ___VARIABLE_productName:identifier___Router = ___VARIABLE_productName:identifier___Router(viewController: viewController)
        let presenter: ___VARIABLE_productName:identifier___Presenter = ___VARIABLE_productName:identifier___Presenter(viewController: viewController, router: router)
        viewController.presenter = presenter

        return viewController
    }

}
