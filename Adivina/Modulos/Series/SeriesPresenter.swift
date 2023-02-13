//
//  SeriesPresenter.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
class SeriesPresenter {
    var interactor: SeriesInteractorProtocol?
    weak var view: SeriesViewProtocol?
    var router: SeriesRouterProtocol?
    
}



extension SeriesPresenter: SeriesPresenterProtocol {
    func goToBack() {
        router?.navigationToBack()
    }
}
