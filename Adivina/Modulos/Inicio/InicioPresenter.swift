//
//  InicioPresenter.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
class InicioPresenter {
    var interactor: InicioInteractorProtocol?
    weak var view: InicioViewProtocol?
    var router: InicioRouterProtocol?
    
}



extension InicioPresenter: InicioPresenterProtocol {
    func goToMovie() {
        router?.navigationMovie()
        
    }
    
    func goToSerie() {
        router?.navigationSerie()
    }
    
    func goToAnime() {
        router?.navigationAnime()
    }
    
    
}
