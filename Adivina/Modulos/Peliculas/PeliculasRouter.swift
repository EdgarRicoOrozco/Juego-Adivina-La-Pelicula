//
//  PeliculasRouter.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

class PeliculasRouter{
    var navigation: UINavigationController?
    
}

extension PeliculasRouter: PeliculasRouterProtocol{
    func navigationToBack() {
        navigation?.popViewController(animated: true)
    }
}
