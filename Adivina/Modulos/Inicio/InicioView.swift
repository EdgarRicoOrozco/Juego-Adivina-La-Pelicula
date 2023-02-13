//
//  InicioView.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit
class InicioView: UIViewController {
    var presenter: InicioPresenterProtocol?
    private var ui: InicioViewUI?
    
    
    override func loadView() {
        ui = InicioViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
    }
    
}

extension InicioView: InicioViewProtocol {
    
}

extension InicioView: InicioViewUIDelegate {
    func goToMovie() {
        presenter?.goToMovie()
    }
    
    func goToSerie() {
        presenter?.goToSerie()
    }
    
    func goToAnime() {
        presenter?.goToAnime()
    }
    
    
}
