//
//  InicioProtocols.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
protocol InicioViewProtocol: class {
    
}

protocol InicioInteractorProtocol: class {
    
}

protocol InicioPresenterProtocol: class {
    func goToMovie()
    func goToSerie()
    func goToAnime()
}

protocol InicioRouterProtocol: class {
    func navigationMovie()
    func navigationSerie()
    func navigationAnime()
    
}
