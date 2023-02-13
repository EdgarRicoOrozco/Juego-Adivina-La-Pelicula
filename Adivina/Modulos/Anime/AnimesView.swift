//
//  AnimesView.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit
class AnimesView: UIViewController {
    var presenter: AnimesPresenterProtocol?
    private var ui: AnimesViewUI?
    
    
    override func loadView() {
        ui = AnimesViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
    }
    
}

extension AnimesView: AnimesViewProtocol {
    
}

extension AnimesView: AnimesViewUIDelegate {
    func goToBack() {
        presenter?.goToBack()
    }
}
