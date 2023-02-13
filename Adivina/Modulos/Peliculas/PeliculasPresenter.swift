//
//  PeliculasPresenter.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
class PeliculasPresenter {
    var interactor: PeliculasInteractorProtocol?
    weak var view: PeliculasViewProtocol?
    var router: PeliculasRouterProtocol?
    
}



extension PeliculasPresenter: PeliculasPresenterProtocol {
    func goToBack() {
        router?.navigationToBack()
    }
}
