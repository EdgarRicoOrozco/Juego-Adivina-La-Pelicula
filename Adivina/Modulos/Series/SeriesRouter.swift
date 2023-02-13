//
//  SeriesRouter.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

class SeriesRouter{
    var navigation: UINavigationController?
    
}

extension SeriesRouter: SeriesRouterProtocol{
    func navigationToBack() {
        navigation?.popViewController(animated: true)
    }
}
