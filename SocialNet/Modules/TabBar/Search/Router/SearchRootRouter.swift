//
//  SearchRootRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class SearchRootRouter {
    /// Cargar los componentes de la vista
    static func createModule() -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "SearchRootVC")
        if let view = viewController as? SearchRootVC {
            let presenter = SearchRootPresenter()
            let interactor = SearchRootInteractor()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = SearchRootRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "SearchRootView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension SearchRootRouter: SearchRootRouterProtocol {
}
