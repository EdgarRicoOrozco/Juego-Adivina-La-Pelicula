//
//  AnimesMain.swift
//  Registro
//
//  Created Phinder 2022 on 22/11/22.
//  2022 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

open class AnimesMain{
    public static func createModule(navigation: UINavigationController) -> UIViewController {
        let viewController: AnimesView? = AnimesView()
        if let view = viewController {
            let presenter = AnimesPresenter()
            let router = AnimesRouter()
            let interactor = AnimesInteractor()
            
            
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
