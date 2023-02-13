//
//  SeriesProtocols.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
protocol SeriesViewProtocol: class {
    
}

protocol SeriesInteractorProtocol: class {
    
}

protocol SeriesPresenterProtocol: class {
    func goToBack()
}

protocol SeriesRouterProtocol: class {
    func navigationToBack()
}
