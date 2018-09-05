//
//  UILabel+Molds.swift
//  VIPER
//
//  Created by Mike Pesate on 9/5/18.
//  Copyright © 2018 Mike Pesate. All rights reserved.
//

import UIKit.UILabel
import UIKit.UIColor
import UIKit.UIFont

extension UILabel {
    
    open class var header: UILabel {
        let mold = UILabel()
        mold.font = .header
        mold.textAlignment = .center
        mold.numberOfLines = 2
        mold.textColor = .vBlack
        return mold
    }
    
    open class var subtitle: UILabel {
        let mold = UILabel()
        mold.font = .subtitle
        mold.textAlignment = .center
        mold.numberOfLines = 2
        mold.textColor = .vBlack
        return mold
    }

}
