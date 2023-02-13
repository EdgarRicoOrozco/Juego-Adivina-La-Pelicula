//
//  AnimesRouter.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

class AnimesRouter{
    var navigation: UINavigationController?
    
}

extension AnimesRouter: AnimesRouterProtocol{
    func navigationToBack() {
        navigation?.popViewController(animated: true)
    }
}
