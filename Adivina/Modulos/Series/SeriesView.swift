//
//  SeriesView.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit
class SeriesView: UIViewController {
    var presenter: SeriesPresenterProtocol?
    private var ui: SeriesViewUI?
    
    
    override func loadView() {
        ui = SeriesViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
    }
    
}

extension SeriesView: SeriesViewProtocol {
    
}

extension SeriesView: SeriesViewUIDelegate {
    func goToBack() {
        presenter?.goToBack()
    }
}
