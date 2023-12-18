//
//  HomeRootRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class HomeRootRouter {
    /// Cargar los componentes de la vista
    static func createModule() -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "HomeRootVC")
        if let view = viewController as? HomeRootVC {
            let presenter = HomeRootPresenter()
            let interactor = HomeRootInteractor()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = HomeRootRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "HomeRootView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension HomeRootRouter: HomeRootRouterProtocol {
}
