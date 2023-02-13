//
//  AnimesPresenter.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
class AnimesPresenter {
    var interactor: AnimesInteractorProtocol?
    weak var view: AnimesViewProtocol?
    var router: AnimesRouterProtocol?
    
}



extension AnimesPresenter: AnimesPresenterProtocol {
    func goToBack() {
        router?.navigationToBack()
    }
}
