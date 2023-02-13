//
//  InicioRouter.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

class InicioRouter{
    var navigation: UINavigationController?
    
}

extension InicioRouter: InicioRouterProtocol{
    func navigationMovie() {
        let controller = PeliculasMain.createModule(navigation: self.navigation!)
        navigation?.pushViewController(controller, animated: true)
    }
    
    func navigationSerie() {
        let controller = SeriesMain.createModule(navigation: self.navigation!)
        navigation?.pushViewController(controller, animated: true)
    }
    
    func navigationAnime() {
        let controller = AnimesMain.createModule(navigation: self.navigation!)
        navigation?.pushViewController(controller, animated: true)
    }
    
    
}
