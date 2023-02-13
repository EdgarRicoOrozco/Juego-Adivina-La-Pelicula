//
//  PeliculasView.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit
class PeliculasView: UIViewController {
    var presenter: PeliculasPresenterProtocol?
    private var ui: PeliculasViewUI?
    
    
    override func loadView() {
        ui = PeliculasViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
    }
    
}

extension PeliculasView: PeliculasViewProtocol {
    
}

extension PeliculasView: PeliculasViewUIDelegate {
    func goToBack() {
        presenter?.goToBack()
    }
}
