//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit.UIViewController

final class ___VARIABLE_productName:identifier___Builder {
    
    static func build() -> UIViewController {
        
        let view: ___VARIABLE_productName:identifier___View = ___VARIABLE_productName:identifier___View()
        let router: ___VARIABLE_productName:identifier___Router = ___VARIABLE_productName:identifier___Router(view: view)
        let presenter: ___VARIABLE_productName:identifier___Presenter = ___VARIABLE_productName:identifier___Presenter(view: view, router: router)
        view.presenter = presenter
        
        return view
    }
    
}