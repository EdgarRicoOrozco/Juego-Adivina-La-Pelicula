//
//  SeriesMain.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

open class SeriesMain{
    public static func createModule(navigation: UINavigationController) -> UIViewController {
        let viewController: SeriesView? = SeriesView()
        if let view = viewController {
            let presenter = SeriesPresenter()
            let router = SeriesRouter()
            let interactor = SeriesInteractor()
            
            
             view.presenter = presenter
             
             presenter.view = view
             presenter.interactor = interactor
             presenter.router = router
             
             router.navigation = navigation
             
             interactor.presenter = presenter
            return view
        }
        return UIViewController()
    }
    
    
}
